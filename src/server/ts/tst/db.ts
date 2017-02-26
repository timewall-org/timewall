import { TestDI } from './base';
import DI = require('../deps');
import DB = require('../db');
import Util = require('../util');
import CassandraClient = require('../csclient');
import Model = require('../models/all');
import amock = require('./amock');
const assert = require('assert');

describe("DB", () => {
  var di, db, cs;
  beforeEach(() => {
    cs = amock.of(CassandraClient);
    di = amock(new TestDI());
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
      var event = amock.of(Model.Event);
      event.isValid.returns(false);
      db.insertEvent.catch();
      await db.insertEvent(event);
      db.insertEvent.threw();
      cs.execute.never();
    });
  });

  describe("getEvent", () => {
    it("found", async () => {
      var row = { id: "some id", starttime: { value: Util.toLong(123) }, endtime: { value: Util.toLong(321) }, content: "some content" };
      cs.execute.areturns({ rows: [row] });
      var actual = await db.getEvent(row.id);
      db.getEvent.returned(new Model.Event().fromCassandra(row));
    });

    it("not found", async () => {
      cs.execute.areturns({ rows: [] });
      db.getEvent.catch();
      await db.getEvent("some id");
      db.getEvent.threw();
    });
  });
});
