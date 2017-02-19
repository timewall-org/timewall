require('source-map-support').install();

import DI = require('../deps');

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
