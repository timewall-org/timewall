import { BaseDI } from './base';
import DI = require('../deps');
import DB = require('../db');
import CassandraClient = require('../csclient');
import Model = require('../models/all');
import amock = require('./amock');
const sinon = require('sinon');

class TestDI extends BaseDI {
  getCassandraClient() {
    return this.getInstance("cassandraClient", () => amock(CassandraClient));
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
      var event = new Model.Event();
      amock(db).insertEvent.catchThrow();
      await db.insertEvent(event);
      db.insertEvent.threw();
    });
  });
});
