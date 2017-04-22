import DI = require('./deps');
import Util = require('./util');

export class Request {
  constructor (public endpoint: string, public body: any) { }
}

function invalidRequest(ctx: Request): never {
	throw new Util.AppError(400, `Invalid request ${ctx}`, "Invalid Request");
}

export class API {
  constructor(public di: DI) {}

  async api_publishEvent(r: Request): Promise<any> {
    return null;
  }

  async api_searchEvents(r: Request): Promise<any> {
    return null;
  }

  async execute(r: Request): Promise<any> {
    var method = (this as any)["api_"+r.endpoint] as ((r: Request) => Promise<any>);
    if (!method) {
      invalidRequest(r);
    }

    var ret = await method(r);
    if (ret) {
      return ret;
    } else {
      return {};
    }
  }
}
