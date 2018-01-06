import Util = require('./util');

export type Operation = "publishEvent" | "getLastEvents";

export class RequestEnvelope {
  constructor(public operation: Operation, public request: BaseRequest) {}
}

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