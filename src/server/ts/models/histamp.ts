import Util = require('../util');

class Histamp {
  constructor(public value: number) {}

  static fromCassandra(obj) {
    return new Histamp(Util.fromLong(obj.value));
  }

  isValid() {
    return !!this.value;
  }
}

export = Histamp;
