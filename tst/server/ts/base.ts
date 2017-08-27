import sms = require('source-map-support');
sms.install();

import request = require('supertest');
import DI = require('../../../src/server/ts/deps');
import Model = require('../../../src/server/ts/models/all');
import Util = require('../../../src/server/ts/util');
import {PublishEventRequest} from "../../../src/server/ts/requests";
import {Histamp} from "../../../src/server/ts/models/all";

export class TestDI extends DI {
  constructor() {
    super("tests");
  }
}

export class Testbed {
  async setup(suite: any) {
    suite.timeout(100000);
  }
}

export function randomEvent(): Model.Event {
  var geopoint = new Model.Geopoint();
  geopoint.lat = 0.45;
  geopoint.lon = 0.12;

  var location = new Model.Location();
  location.name = "Foo";
  location.point = geopoint;
  location.url = "something";

  var event = new Model.Event();
  event.setNewId();
  event.location = location;
  event.startTime = Histamp.now();
  event.endTime = Histamp.now();
  event.content = "some content";
  return event;
}

export function randomPublishEventRequest(): PublishEventRequest {
  return { content: "foo" } as PublishEventRequest;
}

// supertest requests
export function doreq(req: request.Request) {
  return new Promise<request.Response>((resolve, reject) => {
    req.end((err, res) => {
      if (err) {
        reject(err);
      } else {
        resolve(res);
      }
    });
  });
}

export function cookieSession() {
  var cookies: string;
  return async (req: request.Request) => {
    if (cookies) {
      req.set('cookie', cookies);
    }
    var res = await doreq(req);
    cookies = res.get("set-cookie") || cookies;
    return res;
  }
}
