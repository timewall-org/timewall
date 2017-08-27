import Util = require('./util');

export abstract class BaseRequest {
  abstract isValid(): boolean;
}

export class PublishEventRequest implements BaseRequest {
  content: string;

  isValid() {
    return !!this.content;
  }
}

export class GetLastEventsRequest implements BaseRequest {
  isValid() {
    return true;
  }
}