import express = require('express');
import domain = require('domain');
import morgan = require('morgan');
import cookieParser = require('cookie-parser');
import bodyParser = require('body-parser');
import process = require('process');

import DI = require('./deps');
import api = require('./api');
import {Request, Response, NextFunction, IRouterMatcher} from "express";
import {Logger} from "./logger";

function asyncRoute(f: (req: Request, res: Response, next: NextFunction) => Promise<void>) {
	return async (req: Request, res: Response, next: NextFunction) => {
		try {
			await f(req, res, next);
		} catch (err) {
			next(err);
		}
	}
}

class App {
  logger: Logger;
  constructor (public di: DI) {
    this.logger = di.getLogger("app");
  }

  createExpressApp () {
    var app = express();
    var config = this.di.getConfig();

    // NEVER CRASH

    app.use((req, res, next) => {
      var d = domain.create();
      d.on('error', (err: Error) => next(err));
      d.run(next);
    });

    // LOGGING

    if (config.log.enabled) {
      app.use(morgan('dev'));
    }

    // REMOVE POWERED BY

    app.use((req, res, next) => {
      res.removeHeader("X-Powered-By");
      next();
    });

    app.use(cookieParser());
    app.use(bodyParser.urlencoded({ extended: false }))
    app.use(bodyParser.json());

    // ROUTES

    app.post('/api/v1', asyncRoute(async (req, res) => {
      try {
        var ctx = new api.Context();
        var envelope = req.body;
        var ret = await this.di.getAPI().execute(ctx, envelope);
        res.status(200).send(ret);
      } catch (e) {
        this.logger.error(e);
        res.status(e.status || 500).send({ error: (e.userMessage || "Internal Error") });
      }
    }));

    app.get('/upgrade', asyncRoute(async (req, res) => {
      await this.di.getSuperCommands().upgradeV0();
      res.status(200).send("DONE");
    }));

    app.get('*', express.static('build/client'));

    return app;
  }
}

export = App;
