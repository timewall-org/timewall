class Geopoint {
  lng: number;
  lat: number;

  fromCassandra(obj) {
    this.lng = obj.lng;
    this.lat = obj.lat;
    return this;
  }
}

export = Geopoint;
