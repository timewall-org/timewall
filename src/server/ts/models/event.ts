import Geopoint = require('./geopoint');
import Location = require('./location');
import Histamp = require('../histamp');
import BaseModel = require('./base');
import Util = require('../util');

class Event extends BaseModel {
  id: any; // timeuuid
  location: Location;
  startTime: Histamp;
  endTime: Histamp;
  content: string;

  constructor() {
    super();
    this.id = Util.uuid1();
  }

  isValid() {
    if (!(this.id && this.location && this.startTime && this.endTime && this.content)) {
      return false;
    }
    if (this.startTime.value > this.endTime.value) {
      return false;
    }
    return true;
  }

  fromCassandra(obj) {
    this.id = obj.id;
    this.location = new Location().fromCassandra(obj.location);
    this.startTime = new Histamp(obj.startTime);
    this.endTime = new Histamp(obj.endTime);
    this.content = obj.content;
    return this;
  }

  shallowCopy() {
    return Util.copyObject(this);
  }
}

export = Event;
