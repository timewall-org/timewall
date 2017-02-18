import { BaseDI } from './base';
import DI = require('../deps');
import App = require('../app');
import { Request, API } from '../api';
import Util = require('../util');
import config = require('../conf');
import amock = require('./amock');
const request = require('supertest');
const assert = require('assert');

class TestDI extends BaseDI {
  getAPI() {
    return this.getInstance("api", () => amock(new API(this)));
  }
}

describe('Routes', () => {
  var di;
  var server;
  before(async () => {
    di = new TestDI();
    server = await Util.startApp(new App(di).createExpressApp(), config.tests.port);
  });
  after(() => {
    server.close();
  });

  describe('/api/v1', () => {
    it('success', (done) => {
      var req = { endpoint: "endp", body: "bt" };
      var res = { test: "test" };
      di.getAPI().execute.returns(res);

      request(server)
      .get("/api/v1")
      .send(req)
      .expect(res)
      .expect(200, () => {
        assert(di.getAPI().execute.once().withArgs(new Request(req.endpoint, req.body)).verify());
        done();
      });
    });

    it('failure', (done) => {
      var req = { endpoint: "anything", body: "something" };
      di.getAPI().execute.throws(new Util.AppError(456, "Test", "Test"));

      request(server)
      .get("/api/v1")
      .send(req)
      .expect({ error: "Test" })
      .expect(456, done);
    });
  });
});
