import base = require('./base');
import DI = require('../deps');
import App = require('../app');
import { Request, API } from '../api';
import Util = require('../util');
import config = require('../conf');
const sinon = require('sinon');
const request = require('supertest');

var server;

class TestDI extends DI {
  overrideConfig(config) {
    config.log.enabled = false;
  }

  getAPI() {
    return this.getInstance("api", () => new API(this));
  }
}
var di = new TestDI();

var server;
before(async () => {
  server = await Util.startApp(new App(di).createExpressApp(), config.tests.port);
});
after(() => {
  //server.close();
});

describe('Routes', () => {
  var apiMock;
  before(() => {
    apiMock = sinon.mock(di.getAPI());
  });
  after(() => {
    apiMock.verify();
  });

  it('/api/v1', (done) => {
    var req = { endpoint: "endp", body: "bt" };
    var res = { test: "test" };
    apiMock.expects("execute").withExactArgs(new Request("endp", "bt")).once().returns(res);

    request(server)
    .get("/api/v1")
    .send(req)
    .expect(res)
    .expect(200, done);
  });
});
