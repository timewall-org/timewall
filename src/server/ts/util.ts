import util = require('util');
import cassandra = require('cassandra-driver');
import express = require('express');
import * as Long from "long";

export class AppError extends Error {
  private internalMessage: string;
  private userMessage: string;
  private status: number;

  constructor(status: number, internalMessage: string, userMessage = "Internal Error") {
    super(internalMessage);
    this.internalMessage = internalMessage;
    this.userMessage = userMessage;
    this.status = status;

    Object.setPrototypeOf(this, AppError.prototype);
  }
}

export function startApp(app: express.Express, port: number): Promise<any> {
  return new Promise((resolve, reject) => {
    var server = app.listen(port, (err: Error) => {
      if (err) {
        reject(err);
      } else {
        resolve(server);
      }
    });
  });
}

export function deepCloneJSON<T>(obj: T): T {
  return JSON.parse(JSON.stringify(obj));
}

export function copyObject<T>(obj: T): T {
  var obj2 = Object.create(Object.getPrototypeOf(obj)) as T;
  return Object.assign(obj2, obj);
}

export function uuid1() {
  return cassandra.types.TimeUuid.now();
}

export function toLong(num: number) {
  return Long.fromNumber(num);
}

export function fromLong(long: Long): number {
  return long.toNumber();
}

export function deepObjectOverride(target: any, override: any) {
  for (var name of Object.getOwnPropertyNames(override)) {
    if (override.hasOwnProperty(name)) {
      var child = target[name];
      if (child && Object.getPrototypeOf(child).constructor === Object) {
        deepObjectOverride(child, override[name]);
      } else {
        target[name] = override[name];
      }
    }
  }
}
