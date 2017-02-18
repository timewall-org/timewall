const util = require('util');
const cassandra = require('cassandra-driver');
const _ = require('lodash');

(Array.prototype as any).equals = function(arr: any[]) {
  if (this.length != arr.length) {
    return false;
  }
  for (var i=0; i < this.length; i++) {
    if (!equals(this[i], arr[i])) {
      return false;
    }
  }
  return true;
};

export function equals(obj1: any, obj2: any) {
  if (obj1 == obj2) {
    return true;
  }
  if (typeof obj1 !== typeof obj2) {
    return false;
  }
  if (obj1.equals) {
    return obj1.equals(obj2);
  }
  if (obj2.equals) {
    return false;
  }
  return _.isEqual(obj1, obj2);
}

export function AppError(status: number, internalMessage: string, userMessage = "Internal Error") {
	var JSError = Error as any;
  JSError.captureStackTrace(this, this.constructor);
  this.name = this.constructor.name;
  this.internalMessage = internalMessage;
  this.userMessage = userMessage;
  this.status = status;
}
util.inherits(AppError, Error);

export function startApp(app, port): Promise<any> {
  return new Promise((resolve, reject) => {
    var server = app.listen(port, (err) => {
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
  var obj = Object.create(Object.getPrototypeOf(this)) as T;
  return Object.assign(obj, this);
}

export function uuid1() {
  return cassandra.types.TimeUuid.now();
}
