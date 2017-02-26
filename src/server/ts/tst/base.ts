require('source-map-support').install();

import DI = require('../deps');
import Model = require('../models/all');
import Util = require('../util');

export class TestDI extends DI {
  constructor() {
    super("tests");
  }
}

export class Testbed {
  async setup(suite) {
    suite.timeout(100000);
  }
}

export function randomEvent(): Model.Event {
  var geopoint = new Model.Geopoint();
  geopoint.lat = 0.45;
  geopoint.lng = 0.12;

  var location = new Model.Location();
  location.name = "Foo";
  location.point = geopoint;
  location.url = "something";

  var event = new Model.Event();
  event.id = Util.uuid1();
  event.location = location;
  event.startTime = new Model.Histamp(123);
  event.endTime = new Model.Histamp(321);
  event.content = "some content";
  return event;
}

// supertest requests
export async function doreq(req) {
  return new Promise((resolve, reject) => {
    req.end((err, res) => {
      if (err) {
        reject(err);
      } else {
        resolve(res);
      }
    });
  });
}
