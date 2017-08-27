import Geopoint = require('./geopoint');

class Location {
  name: string;
  point: Geopoint;
  url: string;

  static fromCassandra(obj: any) {
    var res = new Location();
    res.name = obj.name;
    res.point = Geopoint.fromCassandra(obj.point);
    res.url = obj.url;
    return res;
  }

  isValid() {
    return !!(this.name && this.point && this.point.isValid() && this.url);
  }
}

export = Location;
