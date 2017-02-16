import Geopoint = require('./geopoint');
import Histamp = require('../histamp');

class Event {
  id: any; // timeuuid
  location: Location;
  startTime: Histamp;
  endTime: Histamp;
  content: string;
}

export = Event;
