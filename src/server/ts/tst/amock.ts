const assert = require('assert');

var amock = ((obj) => {
  if (typeof obj !== "function") {
    if (obj.prototype) {
      return amock(Object.create(obj.prototype));
    }

    var proto = Object.getPrototypeOf(obj);
    var names = Object.getOwnPropertyNames(proto);
    for (var i = 0; i < names.length; i++) {
      var name = names[i];
      obj[name] = amock(obj[name]);
    }
    return obj;
  }

  var f = function() {
    var call = {
      this: this,
      arguments: arguments,
      result: undefined,
      exception: undefined
    };
    f.state.calls.push(call);

    var handleResult = res => {
      call.result = res;
      if (f.state.returns) {
        return f.state.returns[0];
      } else {
        return res;
      }
    };
    var handleError = err => {
      call.exception = err;
      if (f.state.throws) {
        throw f.state.throws;
      }
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
    calls: []
  };

  for (var fname in amock.functions) {
    f[fname] = (fname => { return function() {
      var args = Array.prototype.slice.call(arguments);
      args.splice(0, 0, f);
      amock.functions[fname].apply(f, args);
      return f;
    }}) (fname);
  }

  return f;
}) as any;

amock.functions = {
  anyCall: (f, u) => {
    var matched = false;
    for (var call of f.state.calls) {
      if (!!f(call)) {
        matched = true;
        if (u) {
          u(call);
        }
        break;
      }
    }
    assert(matched);
  },

  catchThrow: f => { f.state.catchThrow = true; },
  returns: (f, x) => { f.state.returns = [x]; },
  once: f => assert(f.state.calls.length == 1),
  never: f => assert(f.state.calls.length == 0),
  threw: (f, u) => f.anyCall(c => c.exception, u),
  throws: (f, e) => { f.state.throws = e; }
};

export = amock;
