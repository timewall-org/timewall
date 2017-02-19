const assert = require('assert');

class Call {
  result: any;
  error: Error;

  constructor(public self: any, public args: any[]) {}
}

class Amock {
  func: any;
  realfunc: any;
  calls: Call[];
  curCall: number;

  _returns: any;
  _throws: Error;
  _catchThrow: boolean;

  ccall() {
    var len = this.calls.length;
    assert(len > 0, `called ${len} times`);
    return this.calls[this.curCall];
  }

  next() {
    this.curCall++;
    return this;
  }

  resetAll() {
    this.calls = [];
    this.curCall = 0;
    this.resetStubs();
    return this;
  }

  resetStubs() {
    delete this._returns;
    delete this._throws;
    this.func = this.realfunc;
    return this;
  }

  spyCall(self, args) {
    var call = new Call(this, args);
    this.calls.push(call);

    var handle = (res, err) => {
      call.result = res;
      call.error = err;
      if (this._returns) {
        return this._returns[0];
      }
      if (this._throws) {
        throw this._throws;
      }
      if (err && !this._catchThrow) {
        throw err;
      }
      return res;
    };

    var ret;
    try {
      ret = this.func.apply(self, args);
      if (ret instanceof Promise) {
        return ret.then(ret => handle(ret, undefined), err => handle(undefined, err));
      } else {
        return handle(ret, undefined);
      }
    } catch (err) {
      return handle(undefined, err);
    }
  }

  // stubbing
  returns(x) { this._returns = [x]; return this; };
  throws(e) { this._throws = e; return this; };
  catchThrow() { this._catchThrow = true; }

  // verifying
  withArgs(...args) { assert.deepStrictEqual(this.ccall().args, args); return this; };
  once() { assert(this.calls.length == 1, "not called once"); return this; };
  never() { assert(this.calls.length == 0, "got called"); return this; };
  threw() { assert(!!this.ccall().error, "did not throw"); return this; };
}

function amock(obj): any {
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

  var realfunc = obj;

  var f = function() {
    var args = Array.prototype.slice.call(arguments);
    return f.spyCall(this, args);
  } as any as Amock;

  f.realfunc = realfunc;

  for (var name of Object.getOwnPropertyNames(Amock.prototype)) {
    if (name !== "constructor") {
      f[name] = Amock.prototype[name];
    }
  }

  return f.resetAll();
}

(amock as any).Amock = Amock;

export = amock;
