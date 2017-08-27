import * as Long from "long";

class Histamp {
  value: Long;

  isValid() {
    return !!this.value;
  }

  static now() {
    var res = new Histamp();
    res.value = Long.fromNumber(new Date().getTime() / 1000);
    return res;
  }

  static fromCassandra(obj: any) {
    var res = new Histamp();
    res.value = obj.value;
    return res;
  }
}

export = Histamp;
