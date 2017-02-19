import { BaseDI, doreq } from './base';
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
  var di, api, server;
  beforeEach(async () => {
    di = new TestDI();
    api = di.getAPI();
    server = await Util.startApp(new App(di).createExpressApp(), config.tests.port);
  });
  afterEach(() => {
    server.close();
  });

  describe('/api/v1', () => {
    it('success', async () => {
      var req = { endpoint: "endp", body: "bt" };
      var res = { test: "test" };
      api.execute.areturns(res);

      await doreq(request(server)
      .get("/api/v1")
      .send(req)
      .expect(res)
      .expect(200));
      api.execute.once().withArgs(new Request(req.endpoint, req.body));
    });

    it('failure', async () => {
      var req = { endpoint: "anything", body: "something" };
      api.execute.athrows(new Util.AppError(456, "Test", "Test user"));

      await doreq(request(server)
      .get("/api/v1")
      .send(req)
      .expect({ error: "Test user" })
      .expect(456));
    });
  });
});
