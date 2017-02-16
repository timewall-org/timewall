const util = require('util');
const cassandra = require('cassandra-driver');

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
