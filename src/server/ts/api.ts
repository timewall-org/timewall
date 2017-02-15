import DI = require('./deps');
import Util = require('./util');

export class Request {
  constructor (public endpoint: string, public body: any) { }
}

function invalidRequest(ctx): never {
	throw new Util.AppError(400, `Invalid request ${ctx}`, "Invalid Request");
}

export class API {
  constructor(public di: DI) {}

  async api_publish(r: Request): Promise<any> {
    return null;
  }

  async api_search(r: Request): Promise<any> {
    return null;
  }

  async execute(r: Request): Promise<any> {
    var method = this["api_"+r.endpoint];
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
