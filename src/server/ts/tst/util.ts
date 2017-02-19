import Util = require('../util');
const assert = require('assert');

describe("Utils", () => {
  it("deepObjectOverride", () => {
    var target = {
      a: 123,
      b: {
        c: "foo",
        d: {
          e: function() {},
          f: [1,2,3]
        },
        g: null
      }
    };

    var override = {
      b: {
        c: "bar",
        d: {
          n: "new"
        }
      }
    };

    var expected = {
      a: 123,
      b: {
        c: "bar",
        d: {
          e: target.b.d.e,
          f: [1,2,3],
          n: "new"
        },
        g: null
      }
    };

    Util.deepObjectOverride(target, override);
    assert.deepStrictEqual(target, expected);
  });
});
