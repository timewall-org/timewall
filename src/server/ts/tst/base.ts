require('source-map-support').install();

import DI = require('../deps');

export class BaseDI extends DI {
  overrideConfig(config) {
    config.log.enabled = false;
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
