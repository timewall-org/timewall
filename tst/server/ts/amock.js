"use strict";
var assert = require("assert");
var Call = (function () {
    function Call(self, args) {
        this.self = self;
        this.args = args;
    }
    return Call;
}());
function unexpectedInvocation(obj, name) {
    return function () {
        if (obj && name) {
            assert(false, "unexpected invocation of " + obj.constructor.name + "." + name + "()");
        }
        else {
            assert(false, "unexpected invocation");
        }
    };
}
var Amock = (function () {
    function Amock() {
    }
    Amock.prototype.ccall = function () {
        var len = this.calls.length;
        assert(len > 0, "called " + len + " times");
        return this.calls[this.curCall];
    };
    Amock.prototype.resetAll = function () {
        this.calls = [];
        this.curCall = 0;
        this.resetStubs();
        return this;
    };
    Amock.prototype.resetStubs = function () {
        this.func = this.defaultfunc || this.realfunc;
        return this;
    };
    Amock.prototype.spyCall = function (self, args) {
        var _this = this;
        var call = new Call(this, args);
        this.calls.push(call);
        var handle = function (res, err) {
            call.result = res;
            call.error = err;
            if (err && !_this._catch) {
                throw err;
            }
            return res;
        };
        var ret;
        try {
            ret = this.func.apply(self, args);
            if (ret instanceof Promise) {
                return ret.then(function (ret) { return handle(ret, undefined); }, function (err) { return handle(undefined, err); });
            }
            else {
                return handle(ret, undefined);
            }
        }
        catch (err) {
            return handle(undefined, err);
        }
    };
    // stubbing
    Amock.prototype.stub = function (f) { this.func = f; return this; };
    Amock.prototype.defaultStub = function (f) { this.defaultfunc = f; return this.stub(f); };
    Amock.prototype.allow = function () { return this.stub(this.realfunc); };
    Amock.prototype.disallow = function () { return this.stub(unexpectedInvocation(this.parentobj, this.funcname)); };
    Amock.prototype.returns = function (x) { return this.stub(function () { return x; }); };
    Amock.prototype.throws = function (e) { return this.stub(function () { throw e; }); };
    Amock.prototype.areturns = function (x) { return this.stub(function () { return Promise.resolve(x); }); };
    Amock.prototype.athrows = function (x) { return this.stub(function () { return Promise.reject(x); }); };
    Amock.prototype.catch = function () { this._catch = true; return this.allow(); };
    // verifying
    Amock.prototype.next = function () { this.curCall++; return this; };
    ;
    Amock.prototype.withArgs = function () {
        var args = [];
        for (var _i = 0; _i < arguments.length; _i++) {
            args[_i] = arguments[_i];
        }
        assert.deepStrictEqual(this.ccall().args, args);
        return this;
    };
    ;
    Amock.prototype.once = function () { assert(this.calls.length == 1, "not called once"); return this; };
    ;
    Amock.prototype.never = function () { assert(this.calls.length == 0, "got called"); return this; };
    ;
    Amock.prototype.threw = function () { assert(!!this.ccall().error, "did not throw"); return this; };
    ;
    Amock.prototype.returned = function (x) { assert.deepStrictEqual(this.ccall().result, x); return this; };
    ;
    return Amock;
}());
var defaultOptions = { parent: undefined, name: undefined, disallowAll: false };
var amock = (function (obj, options) {
    if (options === void 0) { options = defaultOptions; }
    if (!(obj instanceof Function)) {
        var proto = Object.getPrototypeOf(obj);
        while (proto && proto !== Object.prototype) {
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
            proto = Object.getPrototypeOf(proto);
        }
        return obj;
    }
    var f = function () {
        var args = Array.prototype.slice.call(arguments);
        return f.spyCall(this, args);
    };
    f.realfunc = obj;
    f.parentobj = options.parent;
    f.funcname = options.name;
    for (var _i = 0, _a = Object.getOwnPropertyNames(Amock.prototype); _i < _a.length; _i++) {
        var name = _a[_i];
        if (name !== "constructor") {
            f[name] = Amock.prototype[name];
        }
    }
    return f.resetAll();
});
amock.Amock = Amock;
amock.Call = Call;
amock.of = function (f) { return amock(Object.create(f.prototype), { disallowAll: true }); };
module.exports = amock;
