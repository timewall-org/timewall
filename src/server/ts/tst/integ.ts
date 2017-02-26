import { randomEvent } from './base';
import DefaultDI = require('../default_deps');
import DB = require('../db');
import CassandraClient = require('../csclient');
import Model = require('../models/all');
import Util = require('../util');
import amock = require('./amock');
const assert = require('assert');

var di : DefaultDI;
before(async () => {
  di = new DefaultDI("tests");
  var cmd = di.getSuperCommands();
  try { await cmd.dropCassandraKeyspace(); } catch(e) {}
  await cmd.createCassandraKeyspace();
  await cmd.createCassandraSchema();
  await cmd.truncateCassandraTables();
});

describe("Integration tests", () => {
  describe("DB", () => {
    it("insert and retrieve event", async () => {
      var expected = randomEvent();

      await di.getDB().insertEvent(expected);
      var actual = await di.getDB().getEvent(expected.id);
      assert.deepEqual(actual, expected);
    });
  });
});
