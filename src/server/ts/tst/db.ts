import { BaseDI } from './base';
import DI = require('../deps');
import DB = require('../db');
import CassandraClient = require('../csclient');
import Model = require('../models/all');
import amock = require('./amock');

describe("DB", () => {
  var di, db, cs;
  beforeEach(() => {
    cs = amock.of(CassandraClient);
    di = amock(new BaseDI());
    di.createCassandraClient.returns(cs);
    db = amock(new DB(di));
  });

  describe("insertEvent", () => {
    it("success", async () => {
      var event = amock.of(Model.Event);
      event.isValid.returns(true);
      cs.execute.returns();
      await db.insertEvent(event);
      cs.execute.once();
    });

    it("invalid event", async () => {
      var event = amock.of(Model.Event).isValid.returns(false);
      db.insertEvent.catch();
      await db.insertEvent(event);
      db.insertEvent.threw();
      cs.execute.never();
    });
  });
});
