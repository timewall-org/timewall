import { randomEvent } from './base';
import DefaultDI = require('../default_deps');
import DB = require('../db');
import CassandraClient = require('../csclient');
import Model = require('../models/all');
import Util = require('../util');
import amock = require('./amock');
import assert = require('assert');

var di : DefaultDI;
var cassandraAvailable = false;
var elasticSearchAvailable = false;
before(async () => {
  di = new DefaultDI("tests");
  var cmd = di.getSuperCommands();

  try {
    await di.getRootNativeCassandraClient().connect();
    cassandraAvailable = true;
  } catch(e) {}

  try {
    await di.getElasticSearchClient().get("/");
    elasticSearchAvailable = true;
  } catch(e) {}

  if (cassandraAvailable) {
    try { await cmd.dropCassandraKeyspace(); } catch(e) {}
    await cmd.createCassandraKeyspace();
    await cmd.createCassandraSchema();
  }

  if (elasticSearchAvailable) {
    try { await cmd.dropElasticSearchIndex(); } catch(e) {}
    await cmd.createElasticSearchIndex();
  }
});

describe("Integration tests", () => {
  beforeEach(function() {
    if (!(cassandraAvailable && elasticSearchAvailable)) {
      this.skip();
    }
  });

  describe("DB", () => {
    it("insert and retrieve event", async () => {
      var expected = randomEvent();

      await di.getDB().insertEvent(expected);
      var actual = await di.getDB().getEvent(expected.id);
      assert.deepEqual(actual, expected);
    });
  });
});
