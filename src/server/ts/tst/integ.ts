import DefaultDI = require('../default_deps');
import DB = require('../db');
import CassandraClient = require('../csclient');
import Model = require('../models/all');
import Histamp = require('../histamp');
import Util = require('../util');
import amock = require('./amock');
const assert = require('assert');

var di;
before(async () => {
  di = new DefaultDI("tests");
  var cmd = di.getSuperCommands();
  try { await cmd.createCassandraKeyspace(); } catch(e) {}
  try { await cmd.createCassandraSchema(); } catch(e) {}
  await cmd.truncateCassandra();
});

describe("Integration tests", () => {
  describe("DB", () => {
    it("insert and retrieve event", async () => {
      var geopoint = new Model.Geopoint();
      geopoint.lat = 0.45;
      geopoint.lng = 0.12;
      var location = new Model.Location();
      location.name = "Foo";
      location.point = geopoint;
      location.url = "something";
      var expected = new Model.Event();
      expected.id = Util.uuid1();
      expected.location = location;
      expected.startTime = new Histamp(123);
      expected.endTime = new Histamp(321);
      expected.content = "some content";

      await di.getDB().insertEvent(expected);
      var actual = await di.getDB().getEvent(expected.id);
      assert.deepEqual(actual, expected);
    });
  });
});
