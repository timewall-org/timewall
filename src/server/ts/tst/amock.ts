const assert = require('assert');

function amock(obj, funcName?) {
  if (obj.prototype) {
    return amock(Object.create(obj.prototype));
  }

  if (funcName) {
    obj[funcName] = amock(Object.getPrototypeOf(obj)[funcName]);
    return obj[funcName];
  }

  if (typeof obj !== "function") {
    var proto = Object.getPrototypeOf(obj);
    var op = Object.getOwnPropertyNames(obj);
    for (var i=0; i < op.length; i++) {
      var name = op[i];
      obj[name] = amock(obj[name]);
    }
    return obj;
  }

  var f = function() {
    var call = {
      this: this,
      arguments: arguments,
      result: undefined,
      exception: undefined,
    };
    f.state.calls.push(call);

    var handleResult = res => {
      call.result = res;
      return res;
    };
    var handleError = err => {
      call.exception = err;
      if (!f.state.catchThrow) {
        throw err;
      }
    };

    var ret;
    try {
      ret = obj.apply(this, arguments);
      if (ret instanceof Promise) {
        return new Promise((resolve, reject) => {
          ret.then((res) => {
            resolve(handleResult(res));
          }, (err) => {
            try {
              handleError(err);
              resolve();
            } catch (err2) {
              reject(err2);
            }
          });
        });
      } else {
        return handleResult(ret);
      }
    } catch (err) {
      return handleError(err);
    }
  } as any;

  f.state = {
    catchThrow: false,
    calls: []
  };
  f.catchThrow = () => { f.state.catchThrow = true; };
  f.threw = func => {
    var didThrow = false;
    for (var call of f.state.calls) {
      if (call.exception) {
        didThrow = true;
        if (func) {
          return func(call.exception, call);
        }
        break;
      }
    }
    assert(didThrow);
  };

  return f;
}

export = amock;
