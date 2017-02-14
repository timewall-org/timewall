const express = require('express');
const domain = require('domain');
const morgan = require('morgan');
const cookieParser = require('cookie-parser');
const bodyParser = require('body-parser');
const process = require('process');

import DI = require('./deps');

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

  createApp () {
    var app = express();

    // NEVER CRASH

    app.use((req, res, next) => {
      var d = domain.create();
      d.on('error', err => next(err));
      d.run(next);
    });

    // LOGGING

    app.use(morgan('dev'));

    // REMOVE POWERED BY

    app.use((req, res, next) => {
      res.removeHeader("X-Powered-By");
      next();
    });

    app.use(cookieParser());
    app.use(bodyParser.urlencoded({ extended: false }))
    app.use(bodyParser.json());

    // ROUTES

    app.get('/upgrade', asyncRoute(async (req, res, next) => {
      await this.di.getSuperCommands().upgrade();
      res.status(200).send("DONE");
    }));

    app.get('*', express.static('build/client'));

    // ERROR HANDLING

    app.get('*', (req, res) => {
      res.status(404).send("STICAZZI");
    });

    return app;
  }
}

export = App;
