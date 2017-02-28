class Geopoint {
  lon: number;
  lat: number;

  fromCassandra(obj) {
    this.lon = obj.lon;
    this.lat = obj.lat;
    return this;
  }

  isValid() {
    return this.lon && this.lat;
  }
}

export = Geopoint;
