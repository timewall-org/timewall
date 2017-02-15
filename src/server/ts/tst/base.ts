import DI = require('../deps');

class Testbed {
  async setup(suite) {
    suite.timeout(100000);
  }
}

export = new Testbed();
