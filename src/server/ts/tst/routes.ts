import { BaseDI } from './base';
import DI = require('../deps');
import App = require('../app');
import { Request, API } from '../api';
import Util = require('../util');
import config = require('../conf');
const sinon = require('sinon');
const request = require('supertest');

class TestDI extends BaseDI {
  getAPI() {
    return this.getInstance("api", () => new API(this));
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
      var apiMock = sinon.mock(di.getAPI());
      apiMock.expects("execute").withExactArgs(new Request("endp", "bt")).once().returns(res);

      request(server)
      .get("/api/v1")
      .send(req)
      .expect(res)
      .expect(200, () => {
        apiMock.verify();
        done();
      });
    });

    it('failure', (done) => {
      var req = { endpoint: "anything", body: "something" };
      sinon.stub(di.getAPI(), "execute").throws(new Util.AppError(456, "Test", "Test"));

      request(server)
      .get("/api/v1")
      .send(req)
      .expect({ error: "Test" })
      .expect(456, done);
    });
  });
});
