import express = require('express');
import domain = require('domain');
import morgan = require('morgan');
import cookieParser = require('cookie-parser');
import bodyParser = require('body-parser');
import process = require('process');

import DI = require('./deps');
import api = require('./api');
import {Request, Response, NextFunction, IRouterMatcher} from "express";

function asyncRoute(f: (req: Request, res: Response, next: () => NextFunction) => Promise<void>) {
	return async (req, res, next) => {
		try {
			await f(req, res, next);
		} catch (err) {
			next(err);
		}
	}
}

class App {
  constructor (public di: DI) {}

  createExpressApp () {
    var app = express();
    var config = this.di.getConfig();

    // NEVER CRASH

    app.use((req, res, next) => {
      var d = domain.create();
      d.on('error', err => next(err));
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

    app.get('/api/v1', asyncRoute(async (req, res) => {
      var endpoint = req.body.endpoint;
      var body = req.body.body;
      var request = new api.Request(endpoint, body);
      try {
        var ret = await this.di.getAPI().execute(request);
        res.status(200).send(ret);
      } catch (e) {
        if (config.log.enabled) {
          console.error(e);
        }
        res.status(e.status).send({ error: e.userMessage });
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
