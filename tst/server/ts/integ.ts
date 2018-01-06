import {cookieSession, randomEvent, randomPublishEventRequest} from './base';
import Deps = require('../../../src/server/ts/deps');
import DefaultDI = require('../../../src/server/ts/default_deps');
import request = require("supertest");
import assert = require("assert");

describe("Integration tests", () => {
  var cassandraAvailable = false;
  var elasticSearchAvailable = false;
  var di = new DefaultDI("tests");
  
  before(async () => {
    var cmd = di.getSuperCommands();
  
    try {
      await di.getCassandraClient().connect();
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
  });

  var send: any;
  before(function() {
    if (!(cassandraAvailable && elasticSearchAvailable)) {
      this.skip();
    }
  });

  after(async () => {
    if (cassandraAvailable) {
      await di.getCassandraClient().shutdown();
    }
  });
  
  beforeEach(() => {
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

  it("User experience", async () => {
    var evreq = randomPublishEventRequest();
    await send({operation: "publishEvent", request: { content: evreq.content }});
    var events = await send({operation: "getLastEvents"});
    assert.equal(events[0].content, evreq.content);
  });
});
