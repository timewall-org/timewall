import {cookieSession, randomEvent, randomPublishEventRequest} from './base';
import DefaultDI = require('../../../src/server/ts/default_deps');
import request = require("supertest");
import assert = require("assert");

var cassandraAvailable = false;
var elasticSearchAvailable = false;
before(async () => {
  var di = new DefaultDI("tests");
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

var send: any;
beforeEach(function() {
  if (!(cassandraAvailable)) {
    this.skip();
  }

  var di = new DefaultDI("tests");
  var app = di.createApp().createExpressApp();
  var doreq = cookieSession();
  send = async (req: any) => {
    var res = await doreq(request(app)
      .get("/api/v1")
      .send(req)
      .expect(200));
    return res.body.result;
  };
});

describe("Integration tests", () => {
  it("User experience", async () => {
    var evreq = randomPublishEventRequest();
    await send({endpoint: "publishEvent", request: {content: evreq.content }});
    var events = await send({endpoint: "getLastEvents"});
    assert.equal(events[0].content, evreq.content)
  });
});
