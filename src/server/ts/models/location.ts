import Geopoint = require('./geopoint');

class Location {
  name: string;
  point: Geopoint;
  url: string;

  fromCassandra(obj) {
    if (!obj) {
      return null;
    }
    
    this.name = obj.name;
    this.point = new Geopoint().fromCassandra(obj);
    this.url = obj.url;
    return this;
  }
}

export = Location;
