const express = require('express');
const domain = require('domain');
const morgan = require('morgan');
const cookieParser = require('cookie-parser');
const bodyParser = require('body-parser');
const process = require('process');

import DI = require('./deps');
import { Request } from './api';

function asyncRoute(f: (req: any, res: any, next: () => void) => Promise<void>) {
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
      var request = new Request(endpoint, body);
      try {
        var ret = await this.di.getAPI().execute(request);
        res.status(200).send(ret);
      } catch (e) {
        console.error(e);
        res.status(e.status, e.userMessage);
      }
    }));

    app.get('/upgrade', asyncRoute(async (req, res) => {
      await this.di.getSuperCommands().upgrade();
      res.status(200).send("DONE");
    }));

    app.get('*', express.static('build/client'));

    return app;
  }
}

export = App;
