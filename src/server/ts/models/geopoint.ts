class Geopoint {
  lon: number;
  lat: number;

  static fromCassandra(obj: any) {
    var res = new Geopoint();
    res.lon = obj.lon;
    res.lat = obj.lat;
    return res;
  }

  isValid() {
    return !!(this.lon && this.lat);
  }
}

export = Geopoint;
