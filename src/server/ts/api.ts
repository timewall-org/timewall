import DI = require('./deps');
import Util = require('./util');
import {Request, Response} from "express";
import DB = require("./db");
import {RequestEnvelope, BaseRequest, GetLastEventsRequest, PublishEventRequest} from "./requests";
import EventModel = require("./models/event");
import Histamp = require("./models/histamp");

export class Context {
  constructor () {}
}

function invalidRequest(req: any): never {
	throw new Util.AppError(400, `Invalid Request ${req}`, "Invalid Request");
}

function parseRequest<T extends BaseRequest>(req: any, cls: any): T {
  var r = Util.toObject(req || {}, cls) as T;
  if (!r.isValid()) {
    invalidRequest(req);
  }
  return r;
}

export class API {
  db: DB;
  constructor(public di: DI) {
    this.db = di.getDB();
  }

  async api_publishEvent(ctx: Context, raw: any) {
    var r = parseRequest<PublishEventRequest>(raw, PublishEventRequest);
    var event = new EventModel();
    event.setNewId();
    event.content = r.content;
    event.startTime = Histamp.now();
    event.endTime = Histamp.now();
    await this.db.putEvent(event);
  }

  async api_getLastEvents(ctx: Context, raw: any) {
    var r = parseRequest<GetLastEventsRequest>(raw, GetLastEventsRequest);
    return await this.db.getLastEvents();
  }

  async execute(ctx: Context, envelope: RequestEnvelope) {
    var method = (this as any)["api_"+envelope.operation] as any;
    if (!method) {
      invalidRequest(ctx);
    }

    var ret = await method.bind(this)(ctx, envelope.request);
    if (ret) {
      return { success: true, result: ret };
    } else {
      return { success: true };
    }
  }
}
