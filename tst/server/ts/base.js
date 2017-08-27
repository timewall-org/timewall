"use strict";
var __extends = (this && this.__extends) || (function () {
    var extendStatics = Object.setPrototypeOf ||
        ({ __proto__: [] } instanceof Array && function (d, b) { d.__proto__ = b; }) ||
        function (d, b) { for (var p in b) if (b.hasOwnProperty(p)) d[p] = b[p]; };
    return function (d, b) {
        extendStatics(d, b);
        function __() { this.constructor = d; }
        d.prototype = b === null ? Object.create(b) : (__.prototype = b.prototype, new __());
    };
})();
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : new P(function (resolve) { resolve(result.value); }).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __generator = (this && this.__generator) || function (thisArg, body) {
    var _ = { label: 0, sent: function() { if (t[0] & 1) throw t[1]; return t[1]; }, trys: [], ops: [] }, f, y, t, g;
    return g = { next: verb(0), "throw": verb(1), "return": verb(2) }, typeof Symbol === "function" && (g[Symbol.iterator] = function() { return this; }), g;
    function verb(n) { return function (v) { return step([n, v]); }; }
    function step(op) {
        if (f) throw new TypeError("Generator is already executing.");
        while (_) try {
            if (f = 1, y && (t = y[op[0] & 2 ? "return" : op[0] ? "throw" : "next"]) && !(t = t.call(y, op[1])).done) return t;
            if (y = 0, t) op = [0, t.value];
            switch (op[0]) {
                case 0: case 1: t = op; break;
                case 4: _.label++; return { value: op[1], done: false };
                case 5: _.label++; y = op[1]; op = [0]; continue;
                case 7: op = _.ops.pop(); _.trys.pop(); continue;
                default:
                    if (!(t = _.trys, t = t.length > 0 && t[t.length - 1]) && (op[0] === 6 || op[0] === 2)) { _ = 0; continue; }
                    if (op[0] === 3 && (!t || (op[1] > t[0] && op[1] < t[3]))) { _.label = op[1]; break; }
                    if (op[0] === 6 && _.label < t[1]) { _.label = t[1]; t = op; break; }
                    if (t && _.label < t[2]) { _.label = t[2]; _.ops.push(op); break; }
                    if (t[2]) _.ops.pop();
                    _.trys.pop(); continue;
            }
            op = body.call(thisArg, _);
        } catch (e) { op = [6, e]; y = 0; } finally { f = t = 0; }
        if (op[0] & 5) throw op[1]; return { value: op[0] ? op[1] : void 0, done: true };
    }
};
Object.defineProperty(exports, "__esModule", { value: true });
var sms = require("source-map-support");
sms.install();
var DI = require("../../../src/server/ts/deps");
var Model = require("../../../src/server/ts/models/all");
var all_1 = require("../../../src/server/ts/models/all");
var TestDI = (function (_super) {
    __extends(TestDI, _super);
    function TestDI() {
        return _super.call(this, "tests") || this;
    }
    return TestDI;
}(DI));
exports.TestDI = TestDI;
var Testbed = (function () {
    function Testbed() {
    }
    Testbed.prototype.setup = function (suite) {
        return __awaiter(this, void 0, void 0, function () {
            return __generator(this, function (_a) {
                suite.timeout(100000);
                return [2 /*return*/];
            });
        });
    };
    return Testbed;
}());
exports.Testbed = Testbed;
function randomEvent() {
    var geopoint = new Model.Geopoint();
    geopoint.lat = 0.45;
    geopoint.lon = 0.12;
    var location = new Model.Location();
    location.name = "Foo";
    location.point = geopoint;
    location.url = "something";
    var event = new Model.Event();
    event.setNewId();
    event.location = location;
    event.startTime = all_1.Histamp.now();
    event.endTime = all_1.Histamp.now();
    event.content = "some content";
    return event;
}
exports.randomEvent = randomEvent;
function randomPublishEventRequest() {
    return { content: "foo" };
}
exports.randomPublishEventRequest = randomPublishEventRequest;
// supertest requests
function doreq(req) {
    return new Promise(function (resolve, reject) {
        req.end(function (err, res) {
            if (err) {
                reject(err);
            }
            else {
                resolve(res);
            }
        });
    });
}
exports.doreq = doreq;
function cookieSession() {
    var _this = this;
    var cookies;
    return function (req) { return __awaiter(_this, void 0, void 0, function () {
        var res;
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0:
                    if (cookies) {
                        req.set('cookie', cookies);
                    }
                    return [4 /*yield*/, doreq(req)];
                case 1:
                    res = _a.sent();
                    cookies = res.get("set-cookie") || cookies;
                    return [2 /*return*/, res];
            }
        });
    }); };
}
exports.cookieSession = cookieSession;
