const assert = require('assert');

class Call {
  result: any;
  error: Error;

  constructor(public self: any, public args: any[]) {}
}

function unexpectedInvocation(obj?, name?) {
  return () => {
    if (obj && name) {
      assert(false, `unexpected invocation of ${obj.constructor.name}.${name}()`);
    } else {
      assert(false, `unexpected invocation`);
    }
  }
}

class Amock {
  func: any;
  defaultfunc: any;
  realfunc: any;
  parentobj: any;
  funcname: string;

  calls: Call[];
  curCall: number;

  _catch: boolean;

  ccall() {
    var len = this.calls.length;
    assert(len > 0, `called ${len} times`);
    return this.calls[this.curCall];
  }

  resetAll() {
    this.calls = [];
    this.curCall = 0;
    this.resetStubs();
    return this;
  }

  resetStubs() {
    this.func = this.defaultfunc || this.realfunc;
    return this;
  }

  spyCall(self, args) {
    var call = new Call(this, args);
    this.calls.push(call);

    var handle = (res, err) => {
      call.result = res;
      call.error = err;
      if (err && !this._catch) {
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
  stub(f) { this.func = f; return this; }
  defaultStub(f) { this.defaultfunc = f; return this.stub(f); }
  allow() { return this.stub(this.realfunc); }
  disallow() { return this.stub(unexpectedInvocation(this.parentobj, this.funcname)); }
  returns(x) { return this.stub(() => x); }
  throws(e) { return this.stub(() => { throw e; }); }
  areturns(x) { return this.stub(() => Promise.resolve(x)); }
  athrows(x) { return this.stub(() => Promise.reject(x)); }

  catch() { this._catch = true; return this.allow(); }

  // verifying
  next() { this.curCall++; return this; };
  withArgs(...args) { assert.deepStrictEqual(this.ccall().args, args); return this; };
  once() { assert(this.calls.length == 1, "not called once"); return this; };
  never() { assert(this.calls.length == 0, "got called"); return this; };
  threw() { assert(!!this.ccall().error, "did not throw"); return this; };
}

var defaultOptions = { parent: undefined, name: undefined, disallowAll: false };
var amock = ((obj, options = defaultOptions) => {
  if (!(obj instanceof Function)) {
    var proto = Object.getPrototypeOf(obj);
    var names = Object.getOwnPropertyNames(proto);
    for (var i = 0; i < names.length; i++) {
      var name = names[i];
      if (name !== "constructor") {
        obj[name] = amock(obj[name], { parent: obj, name: name });
        if (options.disallowAll) {
          obj[name].defaultStub(unexpectedInvocation(obj, name));
        }
      }
    }
    return obj;
  }

  var f = function() {
    var args = Array.prototype.slice.call(arguments);
    return f.spyCall(this, args);
  } as any as Amock;

  f.realfunc = obj;
  f.parentobj = options.parent;
  f.funcname = options.name;

  for (var name of Object.getOwnPropertyNames(Amock.prototype)) {
    if (name !== "constructor") {
      f[name] = Amock.prototype[name];
    }
  }

  return f.resetAll() as any;
}) as any;

amock.Amock = Amock;
amock.Call = Call;
amock.of = f => amock(Object.create(f.prototype), { disallowAll: true });

export = amock;
