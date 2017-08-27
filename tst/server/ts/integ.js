"use strict";
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
var _this = this;
Object.defineProperty(exports, "__esModule", { value: true });
var base_1 = require("./base");
var DefaultDI = require("../../../src/server/ts/default_deps");
var request = require("supertest");
var assert = require("assert");
var cassandraAvailable = false;
var elasticSearchAvailable = false;
before(function () { return __awaiter(_this, void 0, void 0, function () {
    var di, cmd, e_1, e_2, e_3, e_4;
    return __generator(this, function (_a) {
        switch (_a.label) {
            case 0:
                di = new DefaultDI("tests");
                cmd = di.getSuperCommands();
                _a.label = 1;
            case 1:
                _a.trys.push([1, 3, , 4]);
                return [4 /*yield*/, di.getRootNativeCassandraClient().connect()];
            case 2:
                _a.sent();
                cassandraAvailable = true;
                return [3 /*break*/, 4];
            case 3:
                e_1 = _a.sent();
                return [3 /*break*/, 4];
            case 4:
                _a.trys.push([4, 6, , 7]);
                return [4 /*yield*/, di.getElasticSearchClient().get("/")];
            case 5:
                _a.sent();
                elasticSearchAvailable = true;
                return [3 /*break*/, 7];
            case 6:
                e_2 = _a.sent();
                return [3 /*break*/, 7];
            case 7:
                if (!(cassandraAvailable && elasticSearchAvailable)) return [3 /*break*/, 16];
                _a.label = 8;
            case 8:
                _a.trys.push([8, 10, , 11]);
                return [4 /*yield*/, cmd.dropCassandraKeyspace()];
            case 9:
                _a.sent();
                return [3 /*break*/, 11];
            case 10:
                e_3 = _a.sent();
                return [3 /*break*/, 11];
            case 11:
                _a.trys.push([11, 13, , 14]);
                return [4 /*yield*/, cmd.dropElasticSearchIndex()];
            case 12:
                _a.sent();
                return [3 /*break*/, 14];
            case 13:
                e_4 = _a.sent();
                return [3 /*break*/, 14];
            case 14: return [4 /*yield*/, cmd.upgradeV0()];
            case 15:
                _a.sent();
                _a.label = 16;
            case 16: return [2 /*return*/];
        }
    });
}); });
var send;
beforeEach(function () {
    var _this = this;
    if (!(cassandraAvailable)) {
        this.skip();
    }
    var di = new DefaultDI("tests");
    var app = di.createApp().createExpressApp();
    var doreq = base_1.cookieSession();
    send = function (req) { return __awaiter(_this, void 0, void 0, function () {
        var res;
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0: return [4 /*yield*/, doreq(request(app)
                        .post("/api/v1")
                        .send(req)
                        .expect(200))];
                case 1:
                    res = _a.sent();
                    return [2 /*return*/, res.body.result];
            }
        });
    }); };
});
describe("Integration tests", function () {
    it("User experience", function () { return __awaiter(_this, void 0, void 0, function () {
        var evreq, events;
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0:
                    evreq = base_1.randomPublishEventRequest();
                    return [4 /*yield*/, send({ endpoint: "publishEvent", request: { content: evreq.content } })];
                case 1:
                    _a.sent();
                    return [4 /*yield*/, send({ endpoint: "getLastEvents" })];
                case 2:
                    events = _a.sent();
                    assert.equal(events[0].content, evreq.content);
                    return [2 /*return*/];
            }
        });
    }); });
});
