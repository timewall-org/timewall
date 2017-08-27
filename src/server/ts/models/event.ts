import Location = require('./location');
import Histamp = require('./histamp');
import BaseModel = require('./base');
import TimeUuid = require('./timeuuid');
import Util = require('../util');

class Event extends BaseModel {
  id: TimeUuid;
  location?: Location;
  startTime: Histamp;
  endTime: Histamp;
  content: string;

  setNewId() {
    this.id = new TimeUuid();
  }

  isValid() {
    return !!(this.id && this.startTime && this.endTime && this.content);
  }

  static fromCassandra(obj: any) {
    var ret = new Event();
    ret.id = obj.id;
    ret.location = obj.location ? Location.fromCassandra(obj.location) : undefined;
    ret.startTime = Histamp.fromCassandra(obj.starttime);
    ret.endTime = Histamp.fromCassandra(obj.endtime);
    ret.content = obj.content;
    return ret;
  }
}

export = Event;
