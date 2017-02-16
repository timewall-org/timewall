import { BaseDI } from './base';
import DI = require('../deps');
import DB = require('../db');
import CassandraClient = require('../csclient');
import Model = require('../models/all');
const sinon = require('sinon');

class TestDI extends BaseDI {
  getCassandraClient() {
    return this.getInstance("cassandraClient", () => new CassandraClient(null));
  }
}

describe("DB", () => {
  var di, db;
  before(() => {
    di = new TestDI();
    db = new DB(di);
  });

  describe("insertEvent", () => {
    it("invalid event", async () => {
      /*var mock = sinon.mock(di.getCassandraClient());
      mock.expects("execute").never();
      var spy = sinon.spy(db, 'insertEvent');

      var event = new Model.Event();
      try { await db.insertEvent(event); } catch (e) {};

      mock.verify();
      sinon.assert.threw(db.insertEvent);*/
    });
  });
});
