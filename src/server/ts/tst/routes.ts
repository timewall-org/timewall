import { BaseDI } from './base';
import DI = require('../deps');
import App = require('../app');
import { Request, API } from '../api';
import Util = require('../util');
import config = require('../conf');
import amock = require('./amock');
const request = require('supertest');
const assert = require('assert');

async function doreq(req) {
  return new Promise((resolve, reject) => {
    req.end((err, res) => {
      if (err) {
        reject(err);
      } else {
        resolve(res);
      }
    });
  });
}

class TestDI extends BaseDI {
  getAPI() {
    return this.getInstance("api", () => amock(new API(this)));
  }
}

describe('Routes', () => {
  var di;
  var server;
  beforeEach(async () => {
    di = new TestDI();
    server = await Util.startApp(new App(di).createExpressApp(), config.tests.port);
  });
  afterEach(() => {
    server.close();
  });

  describe('/api/v1', () => {
    it('success', async () => {
      var req = { endpoint: "endp", body: "bt" };
      var res = { test: "test" };
      di.getAPI().execute.returns(res);

      await doreq(request(server)
      .get("/api/v1")
      .send(req)
      .expect(res)
      .expect(200));
      di.getAPI().execute.once().withArgs(new Request(req.endpoint, req.body));
    });

    it('failure', async () => {
      var req = { endpoint: "anything", body: "something" };
      di.getAPI().execute.throws(new Util.AppError(456, "Test", "Test user"));

      await doreq(request(server)
      .get("/api/v1")
      .send(req)
      .expect({ error: "Test user" })
      .expect(456));
    });
  });
});
