import { TestDI, doreq } from './base';
import DI = require('../../../src/server/ts/deps');
import App = require('../../../src/server/ts/app');
import { API } from '../../../src/server/ts/api';
import Util = require('../../../src/server/ts/util');
import config = require('../../../src/server/ts/conf');
import amock = require('./amock');
import request = require('supertest');
import assert = require('assert');

describe('Routes', () => {
  var di: DI;
  var api: API;
  var app: Express.Application;
  beforeEach(async () => {
    api = amock.of(API);
    di = amock.obj(new TestDI());
    amock(di.createAPI).returns(api);
    app = new App(di).createExpressApp();
  });

  describe('/api/v1', () => {
    it('success', async () => {
      var req = { endpoint: "endp", body: "bt" };
      var res = { test: "test" };
      amock(api.execute).areturns(res);

      await doreq(request(app)
      .post("/api/v1")
      .send(req)
      .expect(res)
      .expect(200));
      amock(api.execute).once();
    });

    it('failure', async () => {
      var req = { endpoint: "anything", body: "something" };
      amock(api.execute).athrows(new Util.AppError(456, "Test", "Test user"));

      await doreq(request(app)
      .post("/api/v1")
      .send(req)
      .expect({ error: "Test user" })
      .expect(456));
    });
  });
});
