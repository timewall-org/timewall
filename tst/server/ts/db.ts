import { TestDI } from './base';
import DI = require('../../../src/server/ts/deps');
import DB = require('../../../src/server/ts/db');
import Util = require('../../../src/server/ts/util');
import CassandraClient = require('../../../src/server/ts/csclient');
import ElasticSearchClient = require('../../../src/server/ts/esclient');
import Model = require('../../../src/server/ts/models/all');
import amock = require('./amock');
import assert = require('assert');

describe("DB", () => {
  var di, db: any, cs: any, es: any;
  beforeEach(() => {
    cs = amock.of(CassandraClient);
    es = amock.of(ElasticSearchClient);
    di = amock(new TestDI());
    di.createCassandraClient.returns(cs);
    di.createElasticSearchClient.returns(es);
    db = amock(new DB(di));
  });

  describe("insertEvent", () => {
    it("success", async () => {
      var event = amock.of(Model.Event);
      event.id = "some-id";
      event.location = new Model.Location();
      event.startTime = new Model.Histamp(123);
      event.endTime = new Model.Histamp(321);
      event.isValid.returns(true);
      cs.execute.returns();
      es.create.returns();
      await db.insertEvent(event);
      cs.execute.once();
      es.create.once();
    });

    it("invalid event", async () => {
      var event = amock.of(Model.Event);
      event.isValid.returns(false);
      db.insertEvent.catch();
      await db.insertEvent(event);
      db.insertEvent.threw();
      cs.execute.never();
      es.create.never();
    });
  });

  describe("getEvent", () => {
    it("found", async () => {
      var row = { id: "some id", starttime: { value: Util.toLong(123) }, endtime: { value: Util.toLong(321) }, location: { name: "foo", point: { lat: 123, lon: 321 } }, content: "some content" };
      cs.execute.areturns({ rows: [row] });
      await db.getEvent(row.id);
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
