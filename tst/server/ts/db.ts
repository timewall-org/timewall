import {randomEvent, TestDI} from './base';
import DI = require('../../../src/server/ts/deps');
import DB = require('../../../src/server/ts/db');
import Util = require('../../../src/server/ts/util');
import ElasticSearchClient = require('../../../src/server/ts/esclient');
import Model = require('../../../src/server/ts/models/all');
import amock = require('./amock');
import assert = require('assert');
import cassandra = require('cassandra-driver');

class CassandraClient {
  execute(query: string, params?: any, options?: cassandra.QueryOptions): Promise<cassandra.types.ResultSet> {
    throw new Error("Not implemented");
  }
}

describe("DB", () => {
  var di: DI;
  var db: DB;
  var cs: CassandraClient;
  var es: ElasticSearchClient;
  beforeEach(() => {
    cs = amock.of(CassandraClient);
    es = amock.of(ElasticSearchClient);
    di = amock.obj(new TestDI());
    amock(di.createCassandraClient).returns(cs);
    amock(di.createElasticSearchClient).returns(es);
    db = amock.obj(new DB(di));
  });

  describe("insertEvent", () => {
    it("success", async () => {
      var event = randomEvent();
      amock(cs.execute).returns();
      amock(es.create).returns();
      await db.putEvent(event);
      amock(cs.execute).once();
      amock(es.create).once();
    });

    it("invalid event", async () => {
      var event = amock.of(Model.Event);
      event.isValid.returns(false);
      amock(db.putEvent).catch();
      await db.putEvent(event);
      amock(db.putEvent).threw();
      amock(cs.execute).never();
      amock(es.create).never();
    });
  });

  describe("getEvent", () => {
    it("found", async () => {
      var row = { id: "some id", starttime: { value: Util.toLong(123) }, endtime: { value: Util.toLong(321) }, location: { name: "foo", point: { lat: 123, lon: 321 } }, content: "some content" };
      amock(cs.execute).areturns({ rows: [row] });
      await db.getEvent(row.id);
      amock(db.getEvent).returned(Model.Event.fromCassandra(row));
    });

    it("not found", async () => {
      amock(cs.execute).areturns({ rows: [] });
      amock(db.getEvent).catch();
      await db.getEvent(new Model.TimeUuid());
      amock(db.getEvent).threw();
    });
  });
});
