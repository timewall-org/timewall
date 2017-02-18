import Util = require('../util');
const assert = require('assert');

var amock = ((obj) => {
  if (!(obj instanceof Function)) {
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
    var args = Array.prototype.slice.call(arguments);
    var call = {
      this: this,
      args: args,
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
      ret = obj.apply(this, args);
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

  for (var fname in amock.functions) {
    f[fname] = (fname => { return function() {
      amock.functions[fname].apply(f, arguments);
      return f;
    }}) (fname);
  }
  f["verify"] = () => !!f.state.assertion;

  return f.reset();
}) as any;

amock.functions = {
  assert: function(v) { this.state.assertion &= v; },

  anyCall: function(f, u) {
    var matched = false;
    for (var call of this.state.calls) {
      if (!!f(call)) {
        matched = true;
        if (u) {
          u(call);
        }
        break;
      }
    }
    this.assert(matched);
  },

  reset: function() { this.state = { calls: [], assertion: true }; },
  catchThrow: function() { this.state.catchThrow = true; },
  returns: function(x) { this.state.returns = [x]; },
  once: function() { this.assert(this.state.calls.length == 1) },
  never: function() { this.assert(this.state.calls.length == 0) },
  threw: function(u) { this.anyCall(c => c.exception, u) },
  throws: function(e) { this.state.throws = e; },
  withArgs: function(...args) { this.anyCall(c => Util.equals(args, c.args)); }
};

export = amock;
