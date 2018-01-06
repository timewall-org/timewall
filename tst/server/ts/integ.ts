import {cookieSession, randomEvent, randomPublishEventRequest} from './base';
import Deps = require('../../../src/server/ts/deps');
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

  if (cassandraAvailable && elasticSearchAvailable) {
    try { await cmd.dropCassandraKeyspace(); } catch(e) {}
    try { await cmd.dropElasticSearchIndex(); } catch(e) {}
    await cmd.upgradeV0();
  }

  if (cassandraAvailable) {
    await di.getRootNativeCassandraClient().shutdown();
    await di.getNativeCassandraClient().shutdown();
  }
});

var send: any;
var di: Deps;
beforeEach(() => {
  di = new DefaultDI("tests");
  if (!(cassandraAvailable && elasticSearchAvailable)) {
    this.skip();
  }

  var app = di.createApp().createExpressApp();
  var doreq = cookieSession();
  send = async (req: any) => {
    var res = await doreq(request(app)
      .post("/api/v1")
      .send(req)
      .expect(200));
    return res.body.result;
  };
});

afterEach(async () => {
  if (cassandraAvailable) {
    await di.getRootNativeCassandraClient().shutdown();
    await di.getNativeCassandraClient().shutdown();
  }
});

describe("Integration tests", () => {
  it("User experience", async () => {
    var evreq = randomPublishEventRequest();
    await send({endpoint: "publishEvent", request: {content: evreq.content }});
    var events = await send({endpoint: "getLastEvents"});
    assert.equal(events[0].content, evreq.content);
  });
});
