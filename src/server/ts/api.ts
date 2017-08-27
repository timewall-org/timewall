import DI = require('./deps');
import Util = require('./util');
import {Request, Response} from "express";
import DB = require("./db");
import {BaseRequest, GetLastEventsRequest, PublishEventRequest} from "./requests";
import EventModel = require("./models/event");
import Histamp = require("./models/histamp");

class Context {
  constructor (public req: Request, public res: Response) {}
}

function invalidRequest(ctx: Context): never {
	throw new Util.AppError(400, `Invalid request ${ctx.req}`, "Invalid Request");
}

function checkRequest<T extends BaseRequest>(ctx: Context, cls: any): T {
  var r = Util.toObject(ctx.req.body.request || {}, cls) as T;
  if (!r.isValid()) {
    invalidRequest(ctx);
  }
  return r;
}

export class API {
  db: DB;
  constructor(public di: DI) {
    this.db = di.getDB();
  }

  async api_publishEvent(ctx: Context) {
    var r = checkRequest<PublishEventRequest>(ctx, PublishEventRequest);
    var event = new EventModel();
    event.setNewId();
    event.content = r.content;
    event.startTime = Histamp.now();
    event.endTime = Histamp.now();
    await this.db.insertEvent(event);
  }

  async api_getLastEvents(ctx: Context) {
    var r = checkRequest<GetLastEventsRequest>(ctx, GetLastEventsRequest);
    return await this.db.getLastEvents();
  }

  async execute(req: Request, res: Response) {
    var ctx = new Context(req, res);
    var method = (this as any)["api_"+req.body.endpoint] as any;
    if (!method) {
      invalidRequest(ctx);
    }

    var ret = await method.bind(this)(new Context(req, res), req.body.request);
    if (ret) {
      return { success: true, result: ret };
    } else {
      return { success: true };
    }
  }
}
