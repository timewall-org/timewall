import { BaseDI } from './base';
import DI = require('../deps');
import DB = require('../db');
import CassandraClient = require('../csclient');
import Model = require('../models/all');
import amock = require('./amock');

class TestDI extends BaseDI {
  getCassandraClient() {
    return this.getInstance("cassandraClient", () => amock.of(CassandraClient));
  }
}

describe("DB", () => {
  var di, db, cs;
  beforeEach(() => {
    di = new TestDI();
    db = amock(new DB(di));
    cs = di.getCassandraClient();
  });

  describe("insertEvent", () => {
    it("invalid event", async () => {
      var event = new Model.Event();

      db.insertEvent.catch();
      await db.insertEvent(event);
      db.insertEvent.threw();
      cs.execute.never();
    });
  });
});
