const util = require('util');

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

export function deepClone<T>(obj: T): T {
  return JSON.parse(JSON.stringify(obj));
}
