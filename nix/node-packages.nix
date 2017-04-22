{ self, fetchurl, fetchgit ? null, lib }:

{
  by-spec."URIjs"."*" =
    self.by-version."URIjs"."1.16.1";
  by-version."URIjs"."1.16.1" = self.buildNodePackage {
    name = "URIjs-1.16.1";
    version = "1.16.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/URIjs/-/URIjs-1.16.1.tgz";
      name = "URIjs-1.16.1.tgz";
      sha1 = "edebc678b8b74b26b05d2b481e12383f5ae04b8b";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "URIjs" = self.by-version."URIjs"."1.16.1";
  by-spec."accepts"."~1.3.3" =
    self.by-version."accepts"."1.3.3";
  by-version."accepts"."1.3.3" = self.buildNodePackage {
    name = "accepts-1.3.3";
    version = "1.3.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/accepts/-/accepts-1.3.3.tgz";
      name = "accepts-1.3.3.tgz";
      sha1 = "c3ca7434938648c3e0d9c1e328dd68b622c284ca";
    };
    deps = {
      "mime-types-2.1.15" = self.by-version."mime-types"."2.1.15";
      "negotiator-0.6.1" = self.by-version."negotiator"."0.6.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ajv"."^4.9.1" =
    self.by-version."ajv"."4.11.7";
  by-version."ajv"."4.11.7" = self.buildNodePackage {
    name = "ajv-4.11.7";
    version = "4.11.7";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/ajv/-/ajv-4.11.7.tgz";
      name = "ajv-4.11.7.tgz";
      sha1 = "8655a5d86d0824985cc471a1d913fb6729a0ec48";
    };
    deps = {
      "co-4.6.0" = self.by-version."co"."4.6.0";
      "json-stable-stringify-1.0.1" = self.by-version."json-stable-stringify"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ansi-regex"."^0.2.0" =
    self.by-version."ansi-regex"."0.2.1";
  by-version."ansi-regex"."0.2.1" = self.buildNodePackage {
    name = "ansi-regex-0.2.1";
    version = "0.2.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/ansi-regex/-/ansi-regex-0.2.1.tgz";
      name = "ansi-regex-0.2.1.tgz";
      sha1 = "0d8e946967a3d8143f93e24e298525fc1b2235f9";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ansi-regex"."^0.2.1" =
    self.by-version."ansi-regex"."0.2.1";
  by-spec."ansi-regex"."^2.0.0" =
    self.by-version."ansi-regex"."2.1.1";
  by-version."ansi-regex"."2.1.1" = self.buildNodePackage {
    name = "ansi-regex-2.1.1";
    version = "2.1.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/ansi-regex/-/ansi-regex-2.1.1.tgz";
      name = "ansi-regex-2.1.1.tgz";
      sha1 = "c3b33ab5ee360d86e0e628f0468ae7ef27d654df";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ansi-styles"."^1.1.0" =
    self.by-version."ansi-styles"."1.1.0";
  by-version."ansi-styles"."1.1.0" = self.buildNodePackage {
    name = "ansi-styles-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/ansi-styles/-/ansi-styles-1.1.0.tgz";
      name = "ansi-styles-1.1.0.tgz";
      sha1 = "eaecbf66cd706882760b2f4691582b8f55d7a7de";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ansi-styles"."^2.2.1" =
    self.by-version."ansi-styles"."2.2.1";
  by-version."ansi-styles"."2.2.1" = self.buildNodePackage {
    name = "ansi-styles-2.2.1";
    version = "2.2.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/ansi-styles/-/ansi-styles-2.2.1.tgz";
      name = "ansi-styles-2.2.1.tgz";
      sha1 = "b432dd3358b634cf75e1e4664368240533c1ddbe";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."argparse"."^1.0.7" =
    self.by-version."argparse"."1.0.9";
  by-version."argparse"."1.0.9" = self.buildNodePackage {
    name = "argparse-1.0.9";
    version = "1.0.9";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/argparse/-/argparse-1.0.9.tgz";
      name = "argparse-1.0.9.tgz";
      sha1 = "73d83bc263f86e97f8cc4f6bae1b0e90a7d22c86";
    };
    deps = {
      "sprintf-js-1.0.3" = self.by-version."sprintf-js"."1.0.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."array-flatten"."1.1.1" =
    self.by-version."array-flatten"."1.1.1";
  by-version."array-flatten"."1.1.1" = self.buildNodePackage {
    name = "array-flatten-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/array-flatten/-/array-flatten-1.1.1.tgz";
      name = "array-flatten-1.1.1.tgz";
      sha1 = "9a5f699051b1e7073328f2a008968b64ea2955d2";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."asap"."~2.0.3" =
    self.by-version."asap"."2.0.5";
  by-version."asap"."2.0.5" = self.buildNodePackage {
    name = "asap-2.0.5";
    version = "2.0.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/asap/-/asap-2.0.5.tgz";
      name = "asap-2.0.5.tgz";
      sha1 = "522765b50c3510490e52d7dcfe085ef9ba96958f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."asn1"."~0.2.3" =
    self.by-version."asn1"."0.2.3";
  by-version."asn1"."0.2.3" = self.buildNodePackage {
    name = "asn1-0.2.3";
    version = "0.2.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/asn1/-/asn1-0.2.3.tgz";
      name = "asn1-0.2.3.tgz";
      sha1 = "dac8787713c9966849fc8180777ebe9c1ddf3b86";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."assert-plus"."1.0.0" =
    self.by-version."assert-plus"."1.0.0";
  by-version."assert-plus"."1.0.0" = self.buildNodePackage {
    name = "assert-plus-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/assert-plus/-/assert-plus-1.0.0.tgz";
      name = "assert-plus-1.0.0.tgz";
      sha1 = "f12e0f3c5d77b0b1cdd9146942e4e96c1e4dd525";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."assert-plus"."^0.2.0" =
    self.by-version."assert-plus"."0.2.0";
  by-version."assert-plus"."0.2.0" = self.buildNodePackage {
    name = "assert-plus-0.2.0";
    version = "0.2.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/assert-plus/-/assert-plus-0.2.0.tgz";
      name = "assert-plus-0.2.0.tgz";
      sha1 = "d74e1b87e7affc0db8aadb7021f3fe48101ab234";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."assert-plus"."^1.0.0" =
    self.by-version."assert-plus"."1.0.0";
  by-spec."assertion-error"."1.0.0" =
    self.by-version."assertion-error"."1.0.0";
  by-version."assertion-error"."1.0.0" = self.buildNodePackage {
    name = "assertion-error-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/assertion-error/-/assertion-error-1.0.0.tgz";
      name = "assertion-error-1.0.0.tgz";
      sha1 = "c7f85438fdd466bc7ca16ab90c81513797a5d23b";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."assertion-error"."^1.0.0" =
    self.by-version."assertion-error"."1.0.2";
  by-version."assertion-error"."1.0.2" = self.buildNodePackage {
    name = "assertion-error-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/assertion-error/-/assertion-error-1.0.2.tgz";
      name = "assertion-error-1.0.2.tgz";
      sha1 = "13ca515d86206da0bac66e834dd397d87581094c";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."async"."0.2.x" =
    self.by-version."async"."0.2.10";
  by-version."async"."0.2.10" = self.buildNodePackage {
    name = "async-0.2.10";
    version = "0.2.10";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/async/-/async-0.2.10.tgz";
      name = "async-0.2.10.tgz";
      sha1 = "b6bbe0b0674b9d719708ca38de8c237cb526c3d1";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."asynckit"."^0.4.0" =
    self.by-version."asynckit"."0.4.0";
  by-version."asynckit"."0.4.0" = self.buildNodePackage {
    name = "asynckit-0.4.0";
    version = "0.4.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/asynckit/-/asynckit-0.4.0.tgz";
      name = "asynckit-0.4.0.tgz";
      sha1 = "c79ed97f7f34cb8f2ba1bc9790bcc366474b4b79";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."aws-sign2"."~0.6.0" =
    self.by-version."aws-sign2"."0.6.0";
  by-version."aws-sign2"."0.6.0" = self.buildNodePackage {
    name = "aws-sign2-0.6.0";
    version = "0.6.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/aws-sign2/-/aws-sign2-0.6.0.tgz";
      name = "aws-sign2-0.6.0.tgz";
      sha1 = "14342dd38dbcc94d0e5b87d763cd63612c0e794f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."aws4"."^1.2.1" =
    self.by-version."aws4"."1.6.0";
  by-version."aws4"."1.6.0" = self.buildNodePackage {
    name = "aws4-1.6.0";
    version = "1.6.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/aws4/-/aws4-1.6.0.tgz";
      name = "aws4-1.6.0.tgz";
      sha1 = "83ef5ca860b2b32e4a0deedee8c771b9db57471e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."balanced-match"."^0.4.1" =
    self.by-version."balanced-match"."0.4.2";
  by-version."balanced-match"."0.4.2" = self.buildNodePackage {
    name = "balanced-match-0.4.2";
    version = "0.4.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/balanced-match/-/balanced-match-0.4.2.tgz";
      name = "balanced-match-0.4.2.tgz";
      sha1 = "cb3f3e3c732dc0f01ee70b403f302e61d7709838";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."basic-auth"."~1.1.0" =
    self.by-version."basic-auth"."1.1.0";
  by-version."basic-auth"."1.1.0" = self.buildNodePackage {
    name = "basic-auth-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/basic-auth/-/basic-auth-1.1.0.tgz";
      name = "basic-auth-1.1.0.tgz";
      sha1 = "45221ee429f7ee1e5035be3f51533f1cdfd29884";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."bcrypt-pbkdf"."^1.0.0" =
    self.by-version."bcrypt-pbkdf"."1.0.1";
  by-version."bcrypt-pbkdf"."1.0.1" = self.buildNodePackage {
    name = "bcrypt-pbkdf-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/bcrypt-pbkdf/-/bcrypt-pbkdf-1.0.1.tgz";
      name = "bcrypt-pbkdf-1.0.1.tgz";
      sha1 = "63bc5dcb61331b92bc05fd528953c33462a06f8d";
    };
    deps = {
      "tweetnacl-0.14.5" = self.by-version."tweetnacl"."0.14.5";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."bl"."^0.9.3" =
    self.by-version."bl"."0.9.5";
  by-version."bl"."0.9.5" = self.buildNodePackage {
    name = "bl-0.9.5";
    version = "0.9.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/bl/-/bl-0.9.5.tgz";
      name = "bl-0.9.5.tgz";
      sha1 = "c06b797af085ea00bc527afc8efcf11de2232054";
    };
    deps = {
      "readable-stream-1.0.34" = self.by-version."readable-stream"."1.0.34";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."bluebird"."~1.2.4" =
    self.by-version."bluebird"."1.2.4";
  by-version."bluebird"."1.2.4" = self.buildNodePackage {
    name = "bluebird-1.2.4";
    version = "1.2.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/bluebird/-/bluebird-1.2.4.tgz";
      name = "bluebird-1.2.4.tgz";
      sha1 = "5985ec23cb6ff1a5834cc6447b3c5ef010fd321a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."body-parser"."*" =
    self.by-version."body-parser"."1.17.1";
  by-version."body-parser"."1.17.1" = self.buildNodePackage {
    name = "body-parser-1.17.1";
    version = "1.17.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/body-parser/-/body-parser-1.17.1.tgz";
      name = "body-parser-1.17.1.tgz";
      sha1 = "75b3bc98ddd6e7e0d8ffe750dfaca5c66993fa47";
    };
    deps = {
      "bytes-2.4.0" = self.by-version."bytes"."2.4.0";
      "content-type-1.0.2" = self.by-version."content-type"."1.0.2";
      "debug-2.6.1" = self.by-version."debug"."2.6.1";
      "depd-1.1.0" = self.by-version."depd"."1.1.0";
      "http-errors-1.6.1" = self.by-version."http-errors"."1.6.1";
      "iconv-lite-0.4.15" = self.by-version."iconv-lite"."0.4.15";
      "on-finished-2.3.0" = self.by-version."on-finished"."2.3.0";
      "qs-6.4.0" = self.by-version."qs"."6.4.0";
      "raw-body-2.2.0" = self.by-version."raw-body"."2.2.0";
      "type-is-1.6.15" = self.by-version."type-is"."1.6.15";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "body-parser" = self.by-version."body-parser"."1.17.1";
  by-spec."boom"."2.x.x" =
    self.by-version."boom"."2.10.1";
  by-version."boom"."2.10.1" = self.buildNodePackage {
    name = "boom-2.10.1";
    version = "2.10.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/boom/-/boom-2.10.1.tgz";
      name = "boom-2.10.1.tgz";
      sha1 = "39c8918ceff5799f83f9492a848f625add0c766f";
    };
    deps = {
      "hoek-2.16.3" = self.by-version."hoek"."2.16.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."brace-expansion"."^1.0.0" =
    self.by-version."brace-expansion"."1.1.7";
  by-version."brace-expansion"."1.1.7" = self.buildNodePackage {
    name = "brace-expansion-1.1.7";
    version = "1.1.7";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/brace-expansion/-/brace-expansion-1.1.7.tgz";
      name = "brace-expansion-1.1.7.tgz";
      sha1 = "3effc3c50e000531fb720eaff80f0ae8ef23cf59";
    };
    deps = {
      "balanced-match-0.4.2" = self.by-version."balanced-match"."0.4.2";
      "concat-map-0.0.1" = self.by-version."concat-map"."0.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."browser-stdout"."1.3.0" =
    self.by-version."browser-stdout"."1.3.0";
  by-version."browser-stdout"."1.3.0" = self.buildNodePackage {
    name = "browser-stdout-1.3.0";
    version = "1.3.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/browser-stdout/-/browser-stdout-1.3.0.tgz";
      name = "browser-stdout-1.3.0.tgz";
      sha1 = "f351d32969d32fa5d7a5567154263d928ae3bd1f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."buffer-shims"."~1.0.0" =
    self.by-version."buffer-shims"."1.0.0";
  by-version."buffer-shims"."1.0.0" = self.buildNodePackage {
    name = "buffer-shims-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/buffer-shims/-/buffer-shims-1.0.0.tgz";
      name = "buffer-shims-1.0.0.tgz";
      sha1 = "9978ce317388c649ad8793028c3477ef044a8b51";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."bytes"."2.4.0" =
    self.by-version."bytes"."2.4.0";
  by-version."bytes"."2.4.0" = self.buildNodePackage {
    name = "bytes-2.4.0";
    version = "2.4.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/bytes/-/bytes-2.4.0.tgz";
      name = "bytes-2.4.0.tgz";
      sha1 = "7d97196f9d5baf7f6935e25985549edd2a6c2339";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."caseless"."~0.12.0" =
    self.by-version."caseless"."0.12.0";
  by-version."caseless"."0.12.0" = self.buildNodePackage {
    name = "caseless-0.12.0";
    version = "0.12.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/caseless/-/caseless-0.12.0.tgz";
      name = "caseless-0.12.0.tgz";
      sha1 = "1b681c21ff84033c826543090689420d187151dc";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."cassandra-driver"."*" =
    self.by-version."cassandra-driver"."3.2.0";
  by-version."cassandra-driver"."3.2.0" = self.buildNodePackage {
    name = "cassandra-driver-3.2.0";
    version = "3.2.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/cassandra-driver/-/cassandra-driver-3.2.0.tgz";
      name = "cassandra-driver-3.2.0.tgz";
      sha1 = "3da538829a8b47b63d6fcc16aaa93ce32ca2cb2d";
    };
    deps = {
      "long-2.4.0" = self.by-version."long"."2.4.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "cassandra-driver" = self.by-version."cassandra-driver"."3.2.0";
  by-spec."chalk"."^0.5.1" =
    self.by-version."chalk"."0.5.1";
  by-version."chalk"."0.5.1" = self.buildNodePackage {
    name = "chalk-0.5.1";
    version = "0.5.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/chalk/-/chalk-0.5.1.tgz";
      name = "chalk-0.5.1.tgz";
      sha1 = "663b3a648b68b55d04690d49167aa837858f2174";
    };
    deps = {
      "ansi-styles-1.1.0" = self.by-version."ansi-styles"."1.1.0";
      "escape-string-regexp-1.0.5" = self.by-version."escape-string-regexp"."1.0.5";
      "has-ansi-0.1.0" = self.by-version."has-ansi"."0.1.0";
      "strip-ansi-0.3.0" = self.by-version."strip-ansi"."0.3.0";
      "supports-color-0.2.0" = self.by-version."supports-color"."0.2.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."chalk"."^1.0.0" =
    self.by-version."chalk"."1.1.3";
  by-version."chalk"."1.1.3" = self.buildNodePackage {
    name = "chalk-1.1.3";
    version = "1.1.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/chalk/-/chalk-1.1.3.tgz";
      name = "chalk-1.1.3.tgz";
      sha1 = "a8115c55e4a702fe4d150abd3872822a7e09fc98";
    };
    deps = {
      "ansi-styles-2.2.1" = self.by-version."ansi-styles"."2.2.1";
      "escape-string-regexp-1.0.5" = self.by-version."escape-string-regexp"."1.0.5";
      "has-ansi-2.0.0" = self.by-version."has-ansi"."2.0.0";
      "strip-ansi-3.0.1" = self.by-version."strip-ansi"."3.0.1";
      "supports-color-2.0.0" = self.by-version."supports-color"."2.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."co"."^4.6.0" =
    self.by-version."co"."4.6.0";
  by-version."co"."4.6.0" = self.buildNodePackage {
    name = "co-4.6.0";
    version = "4.6.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/co/-/co-4.6.0.tgz";
      name = "co-4.6.0.tgz";
      sha1 = "6ea6bdf3d853ae54ccb8e47bfa0bf3f9031fb184";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."colors"."^1.1.0" =
    self.by-version."colors"."1.1.2";
  by-version."colors"."1.1.2" = self.buildNodePackage {
    name = "colors-1.1.2";
    version = "1.1.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/colors/-/colors-1.1.2.tgz";
      name = "colors-1.1.2.tgz";
      sha1 = "168a4701756b6a7f51a12ce0c97bfa28c084ed63";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."combined-stream"."^1.0.5" =
    self.by-version."combined-stream"."1.0.5";
  by-version."combined-stream"."1.0.5" = self.buildNodePackage {
    name = "combined-stream-1.0.5";
    version = "1.0.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/combined-stream/-/combined-stream-1.0.5.tgz";
      name = "combined-stream-1.0.5.tgz";
      sha1 = "938370a57b4a51dea2c77c15d5c5fdf895164009";
    };
    deps = {
      "delayed-stream-1.0.0" = self.by-version."delayed-stream"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."combined-stream"."~1.0.5" =
    self.by-version."combined-stream"."1.0.5";
  by-spec."commander"."2.9.0" =
    self.by-version."commander"."2.9.0";
  by-version."commander"."2.9.0" = self.buildNodePackage {
    name = "commander-2.9.0";
    version = "2.9.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/commander/-/commander-2.9.0.tgz";
      name = "commander-2.9.0.tgz";
      sha1 = "9c99094176e12240cb22d6c5146098400fe0f7d4";
    };
    deps = {
      "graceful-readlink-1.0.1" = self.by-version."graceful-readlink"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."component-emitter"."^1.2.0" =
    self.by-version."component-emitter"."1.2.1";
  by-version."component-emitter"."1.2.1" = self.buildNodePackage {
    name = "component-emitter-1.2.1";
    version = "1.2.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/component-emitter/-/component-emitter-1.2.1.tgz";
      name = "component-emitter-1.2.1.tgz";
      sha1 = "137918d6d78283f7df7a6b7c5a63e140e69425e6";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."concat-map"."0.0.1" =
    self.by-version."concat-map"."0.0.1";
  by-version."concat-map"."0.0.1" = self.buildNodePackage {
    name = "concat-map-0.0.1";
    version = "0.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/concat-map/-/concat-map-0.0.1.tgz";
      name = "concat-map-0.0.1.tgz";
      sha1 = "d8a96bd77fd68df7793a73036a3ba0d5405d477b";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."configstore"."^0.3.1" =
    self.by-version."configstore"."0.3.2";
  by-version."configstore"."0.3.2" = self.buildNodePackage {
    name = "configstore-0.3.2";
    version = "0.3.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/configstore/-/configstore-0.3.2.tgz";
      name = "configstore-0.3.2.tgz";
      sha1 = "25e4c16c3768abf75c5a65bc61761f495055b459";
    };
    deps = {
      "graceful-fs-3.0.11" = self.by-version."graceful-fs"."3.0.11";
      "js-yaml-3.8.3" = self.by-version."js-yaml"."3.8.3";
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "object-assign-2.1.1" = self.by-version."object-assign"."2.1.1";
      "osenv-0.1.4" = self.by-version."osenv"."0.1.4";
      "user-home-1.1.1" = self.by-version."user-home"."1.1.1";
      "uuid-2.0.3" = self.by-version."uuid"."2.0.3";
      "xdg-basedir-1.0.1" = self.by-version."xdg-basedir"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."content-disposition"."0.5.2" =
    self.by-version."content-disposition"."0.5.2";
  by-version."content-disposition"."0.5.2" = self.buildNodePackage {
    name = "content-disposition-0.5.2";
    version = "0.5.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/content-disposition/-/content-disposition-0.5.2.tgz";
      name = "content-disposition-0.5.2.tgz";
      sha1 = "0cf68bb9ddf5f2be7961c3a85178cb85dba78cb4";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."content-type"."~1.0.2" =
    self.by-version."content-type"."1.0.2";
  by-version."content-type"."1.0.2" = self.buildNodePackage {
    name = "content-type-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/content-type/-/content-type-1.0.2.tgz";
      name = "content-type-1.0.2.tgz";
      sha1 = "b7d113aee7a8dd27bd21133c4dc2529df1721eed";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."cookie"."0.3.1" =
    self.by-version."cookie"."0.3.1";
  by-version."cookie"."0.3.1" = self.buildNodePackage {
    name = "cookie-0.3.1";
    version = "0.3.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/cookie/-/cookie-0.3.1.tgz";
      name = "cookie-0.3.1.tgz";
      sha1 = "e7e0a1f9ef43b4c8ba925c5c5a96e806d16873bb";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."cookie-parser"."*" =
    self.by-version."cookie-parser"."1.4.3";
  by-version."cookie-parser"."1.4.3" = self.buildNodePackage {
    name = "cookie-parser-1.4.3";
    version = "1.4.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/cookie-parser/-/cookie-parser-1.4.3.tgz";
      name = "cookie-parser-1.4.3.tgz";
      sha1 = "0fe31fa19d000b95f4aadf1f53fdc2b8a203baa5";
    };
    deps = {
      "cookie-0.3.1" = self.by-version."cookie"."0.3.1";
      "cookie-signature-1.0.6" = self.by-version."cookie-signature"."1.0.6";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "cookie-parser" = self.by-version."cookie-parser"."1.4.3";
  by-spec."cookie-signature"."1.0.6" =
    self.by-version."cookie-signature"."1.0.6";
  by-version."cookie-signature"."1.0.6" = self.buildNodePackage {
    name = "cookie-signature-1.0.6";
    version = "1.0.6";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/cookie-signature/-/cookie-signature-1.0.6.tgz";
      name = "cookie-signature-1.0.6.tgz";
      sha1 = "e303a882b342cc3ee8ca513a79999734dab3ae2c";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."cookiejar"."^2.0.6" =
    self.by-version."cookiejar"."2.1.1";
  by-version."cookiejar"."2.1.1" = self.buildNodePackage {
    name = "cookiejar-2.1.1";
    version = "2.1.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/cookiejar/-/cookiejar-2.1.1.tgz";
      name = "cookiejar-2.1.1.tgz";
      sha1 = "41ad57b1b555951ec171412a81942b1e8200d34a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."core-js"."^1.0.0" =
    self.by-version."core-js"."1.2.7";
  by-version."core-js"."1.2.7" = self.buildNodePackage {
    name = "core-js-1.2.7";
    version = "1.2.7";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/core-js/-/core-js-1.2.7.tgz";
      name = "core-js-1.2.7.tgz";
      sha1 = "652294c14651db28fa93bd2d5ff2983a4f08c636";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."core-util-is"."~1.0.0" =
    self.by-version."core-util-is"."1.0.2";
  by-version."core-util-is"."1.0.2" = self.buildNodePackage {
    name = "core-util-is-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/core-util-is/-/core-util-is-1.0.2.tgz";
      name = "core-util-is-1.0.2.tgz";
      sha1 = "b5fd54220aa2bc5ab57aab7140c940754503c1a7";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."cryptiles"."2.x.x" =
    self.by-version."cryptiles"."2.0.5";
  by-version."cryptiles"."2.0.5" = self.buildNodePackage {
    name = "cryptiles-2.0.5";
    version = "2.0.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/cryptiles/-/cryptiles-2.0.5.tgz";
      name = "cryptiles-2.0.5.tgz";
      sha1 = "3bdfecdc608147c1c67202fa291e7dca59eaa3b8";
    };
    deps = {
      "boom-2.10.1" = self.by-version."boom"."2.10.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."dashdash"."^1.12.0" =
    self.by-version."dashdash"."1.14.1";
  by-version."dashdash"."1.14.1" = self.buildNodePackage {
    name = "dashdash-1.14.1";
    version = "1.14.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/dashdash/-/dashdash-1.14.1.tgz";
      name = "dashdash-1.14.1.tgz";
      sha1 = "853cfa0f7cbe2fed5de20326b8dd581035f6e2f0";
    };
    deps = {
      "assert-plus-1.0.0" = self.by-version."assert-plus"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."debug"."2.2.0" =
    self.by-version."debug"."2.2.0";
  by-version."debug"."2.2.0" = self.buildNodePackage {
    name = "debug-2.2.0";
    version = "2.2.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/debug/-/debug-2.2.0.tgz";
      name = "debug-2.2.0.tgz";
      sha1 = "f87057e995b1a1f6ae6a4960664137bc56f039da";
    };
    deps = {
      "ms-0.7.1" = self.by-version."ms"."0.7.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."debug"."2.6.1" =
    self.by-version."debug"."2.6.1";
  by-version."debug"."2.6.1" = self.buildNodePackage {
    name = "debug-2.6.1";
    version = "2.6.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/debug/-/debug-2.6.1.tgz";
      name = "debug-2.6.1.tgz";
      sha1 = "79855090ba2c4e3115cc7d8769491d58f0491351";
    };
    deps = {
      "ms-0.7.2" = self.by-version."ms"."0.7.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."debug"."2.6.3" =
    self.by-version."debug"."2.6.3";
  by-version."debug"."2.6.3" = self.buildNodePackage {
    name = "debug-2.6.3";
    version = "2.6.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/debug/-/debug-2.6.3.tgz";
      name = "debug-2.6.3.tgz";
      sha1 = "0f7eb8c30965ec08c72accfa0130c8b79984141d";
    };
    deps = {
      "ms-0.7.2" = self.by-version."ms"."0.7.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."debug"."^2.2.0" =
    self.by-version."debug"."2.6.4";
  by-version."debug"."2.6.4" = self.buildNodePackage {
    name = "debug-2.6.4";
    version = "2.6.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/debug/-/debug-2.6.4.tgz";
      name = "debug-2.6.4.tgz";
      sha1 = "7586a9b3c39741c0282ae33445c4e8ac74734fe0";
    };
    deps = {
      "ms-0.7.3" = self.by-version."ms"."0.7.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."deep-extend"."~0.4.0" =
    self.by-version."deep-extend"."0.4.1";
  by-version."deep-extend"."0.4.1" = self.buildNodePackage {
    name = "deep-extend-0.4.1";
    version = "0.4.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/deep-extend/-/deep-extend-0.4.1.tgz";
      name = "deep-extend-0.4.1.tgz";
      sha1 = "efe4113d08085f4e6f9687759810f807469e2253";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."deep-freeze"."0.0.1" =
    self.by-version."deep-freeze"."0.0.1";
  by-version."deep-freeze"."0.0.1" = self.buildNodePackage {
    name = "deep-freeze-0.0.1";
    version = "0.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/deep-freeze/-/deep-freeze-0.0.1.tgz";
      name = "deep-freeze-0.0.1.tgz";
      sha1 = "3a0b0005de18672819dfd38cd31f91179c893e84";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."definition-header"."~0.1.0" =
    self.by-version."definition-header"."0.1.0";
  by-version."definition-header"."0.1.0" = self.buildNodePackage {
    name = "definition-header-0.1.0";
    version = "0.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/definition-header/-/definition-header-0.1.0.tgz";
      name = "definition-header-0.1.0.tgz";
      sha1 = "01445ff4ca663114cbf2c5a1131f13bb544eb5dd";
    };
    deps = {
      "joi-4.9.0" = self.by-version."joi"."4.9.0";
      "joi-assert-0.0.3" = self.by-version."joi-assert"."0.0.3";
      "parsimmon-0.5.1" = self.by-version."parsimmon"."0.5.1";
      "xregexp-2.0.0" = self.by-version."xregexp"."2.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."delayed-stream"."~1.0.0" =
    self.by-version."delayed-stream"."1.0.0";
  by-version."delayed-stream"."1.0.0" = self.buildNodePackage {
    name = "delayed-stream-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/delayed-stream/-/delayed-stream-1.0.0.tgz";
      name = "delayed-stream-1.0.0.tgz";
      sha1 = "df3ae199acadfb7d440aaae0b29e2272b24ec619";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."depd"."1.1.0" =
    self.by-version."depd"."1.1.0";
  by-version."depd"."1.1.0" = self.buildNodePackage {
    name = "depd-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/depd/-/depd-1.1.0.tgz";
      name = "depd-1.1.0.tgz";
      sha1 = "e1bd82c6aab6ced965b97b88b17ed3e528ca18c3";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."depd"."~1.1.0" =
    self.by-version."depd"."1.1.0";
  by-spec."destroy"."~1.0.4" =
    self.by-version."destroy"."1.0.4";
  by-version."destroy"."1.0.4" = self.buildNodePackage {
    name = "destroy-1.0.4";
    version = "1.0.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/destroy/-/destroy-1.0.4.tgz";
      name = "destroy-1.0.4.tgz";
      sha1 = "978857442c44749e4206613e37946205826abd80";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."detect-indent"."^0.2.0" =
    self.by-version."detect-indent"."0.2.0";
  by-version."detect-indent"."0.2.0" = self.buildNodePackage {
    name = "detect-indent-0.2.0";
    version = "0.2.0";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/detect-indent/-/detect-indent-0.2.0.tgz";
      name = "detect-indent-0.2.0.tgz";
      sha1 = "042914498979ac2d9f3c73e4ff3e6877d3bc92b6";
    };
    deps = {
      "get-stdin-0.1.0" = self.by-version."get-stdin"."0.1.0";
      "minimist-0.1.0" = self.by-version."minimist"."0.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."diff"."1.4.0" =
    self.by-version."diff"."1.4.0";
  by-version."diff"."1.4.0" = self.buildNodePackage {
    name = "diff-1.4.0";
    version = "1.4.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/diff/-/diff-1.4.0.tgz";
      name = "diff-1.4.0.tgz";
      sha1 = "7f28d2eb9ee7b15a97efd89ce63dcfdaa3ccbabf";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."diff"."^1.4.0" =
    self.by-version."diff"."1.4.0";
  by-spec."diff"."^3.1.0" =
    self.by-version."diff"."3.2.0";
  by-version."diff"."3.2.0" = self.buildNodePackage {
    name = "diff-3.2.0";
    version = "3.2.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/diff/-/diff-3.2.0.tgz";
      name = "diff-3.2.0.tgz";
      sha1 = "c9ce393a4b7cbd0b058a725c93df299027868ff9";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."duplexer"."~0.1.1" =
    self.by-version."duplexer"."0.1.1";
  by-version."duplexer"."0.1.1" = self.buildNodePackage {
    name = "duplexer-0.1.1";
    version = "0.1.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/duplexer/-/duplexer-0.1.1.tgz";
      name = "duplexer-0.1.1.tgz";
      sha1 = "ace6ff808c1ce66b57d1ebf97977acb02334cfc1";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."duplexify"."^3.2.0" =
    self.by-version."duplexify"."3.5.0";
  by-version."duplexify"."3.5.0" = self.buildNodePackage {
    name = "duplexify-3.5.0";
    version = "3.5.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/duplexify/-/duplexify-3.5.0.tgz";
      name = "duplexify-3.5.0.tgz";
      sha1 = "1aa773002e1578457e9d9d4a50b0ccaaebcbd604";
    };
    deps = {
      "end-of-stream-1.0.0" = self.by-version."end-of-stream"."1.0.0";
      "inherits-2.0.3" = self.by-version."inherits"."2.0.3";
      "readable-stream-2.2.9" = self.by-version."readable-stream"."2.2.9";
      "stream-shift-1.0.0" = self.by-version."stream-shift"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ecc-jsbn"."~0.1.1" =
    self.by-version."ecc-jsbn"."0.1.1";
  by-version."ecc-jsbn"."0.1.1" = self.buildNodePackage {
    name = "ecc-jsbn-0.1.1";
    version = "0.1.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/ecc-jsbn/-/ecc-jsbn-0.1.1.tgz";
      name = "ecc-jsbn-0.1.1.tgz";
      sha1 = "0fc73a9ed5f0d53c38193398523ef7e543777505";
    };
    deps = {
      "jsbn-0.1.1" = self.by-version."jsbn"."0.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ee-first"."1.1.1" =
    self.by-version."ee-first"."1.1.1";
  by-version."ee-first"."1.1.1" = self.buildNodePackage {
    name = "ee-first-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/ee-first/-/ee-first-1.1.1.tgz";
      name = "ee-first-1.1.1.tgz";
      sha1 = "590c61156b0ae2f4f0255732a158b266bc56b21d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."encodeurl"."~1.0.1" =
    self.by-version."encodeurl"."1.0.1";
  by-version."encodeurl"."1.0.1" = self.buildNodePackage {
    name = "encodeurl-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/encodeurl/-/encodeurl-1.0.1.tgz";
      name = "encodeurl-1.0.1.tgz";
      sha1 = "79e3d58655346909fe6f0f45a5de68103b294d20";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."encoding"."^0.1.11" =
    self.by-version."encoding"."0.1.12";
  by-version."encoding"."0.1.12" = self.buildNodePackage {
    name = "encoding-0.1.12";
    version = "0.1.12";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/encoding/-/encoding-0.1.12.tgz";
      name = "encoding-0.1.12.tgz";
      sha1 = "538b66f3ee62cd1ab51ec323829d1f9480c74beb";
    };
    deps = {
      "iconv-lite-0.4.15" = self.by-version."iconv-lite"."0.4.15";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."end-of-stream"."1.0.0" =
    self.by-version."end-of-stream"."1.0.0";
  by-version."end-of-stream"."1.0.0" = self.buildNodePackage {
    name = "end-of-stream-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/end-of-stream/-/end-of-stream-1.0.0.tgz";
      name = "end-of-stream-1.0.0.tgz";
      sha1 = "d4596e702734a93e40e9af864319eabd99ff2f0e";
    };
    deps = {
      "once-1.3.3" = self.by-version."once"."1.3.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."escape-html"."~1.0.3" =
    self.by-version."escape-html"."1.0.3";
  by-version."escape-html"."1.0.3" = self.buildNodePackage {
    name = "escape-html-1.0.3";
    version = "1.0.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/escape-html/-/escape-html-1.0.3.tgz";
      name = "escape-html-1.0.3.tgz";
      sha1 = "0258eae4d3d0c0974de1c169188ef0051d1d1988";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."escape-string-regexp"."1.0.5" =
    self.by-version."escape-string-regexp"."1.0.5";
  by-version."escape-string-regexp"."1.0.5" = self.buildNodePackage {
    name = "escape-string-regexp-1.0.5";
    version = "1.0.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/escape-string-regexp/-/escape-string-regexp-1.0.5.tgz";
      name = "escape-string-regexp-1.0.5.tgz";
      sha1 = "1b61c0562190a8dff6ae3bb2cf0200ca130b86d4";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."escape-string-regexp"."^1.0.0" =
    self.by-version."escape-string-regexp"."1.0.5";
  by-spec."escape-string-regexp"."^1.0.2" =
    self.by-version."escape-string-regexp"."1.0.5";
  by-spec."esprima"."^3.1.1" =
    self.by-version."esprima"."3.1.3";
  by-version."esprima"."3.1.3" = self.buildNodePackage {
    name = "esprima-3.1.3";
    version = "3.1.3";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/esprima/-/esprima-3.1.3.tgz";
      name = "esprima-3.1.3.tgz";
      sha1 = "fdca51cee6133895e3c88d535ce49dbff62a4633";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."etag"."~1.8.0" =
    self.by-version."etag"."1.8.0";
  by-version."etag"."1.8.0" = self.buildNodePackage {
    name = "etag-1.8.0";
    version = "1.8.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/etag/-/etag-1.8.0.tgz";
      name = "etag-1.8.0.tgz";
      sha1 = "6f631aef336d6c46362b51764044ce216be3c051";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."event-stream"."~3.1.5" =
    self.by-version."event-stream"."3.1.7";
  by-version."event-stream"."3.1.7" = self.buildNodePackage {
    name = "event-stream-3.1.7";
    version = "3.1.7";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/event-stream/-/event-stream-3.1.7.tgz";
      name = "event-stream-3.1.7.tgz";
      sha1 = "b4c540012d0fe1498420f3d8946008db6393c37a";
    };
    deps = {
      "through-2.3.8" = self.by-version."through"."2.3.8";
      "duplexer-0.1.1" = self.by-version."duplexer"."0.1.1";
      "from-0.1.7" = self.by-version."from"."0.1.7";
      "map-stream-0.1.0" = self.by-version."map-stream"."0.1.0";
      "pause-stream-0.0.11" = self.by-version."pause-stream"."0.0.11";
      "split-0.2.10" = self.by-version."split"."0.2.10";
      "stream-combiner-0.0.4" = self.by-version."stream-combiner"."0.0.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."exit"."~0.1.2" =
    self.by-version."exit"."0.1.2";
  by-version."exit"."0.1.2" = self.buildNodePackage {
    name = "exit-0.1.2";
    version = "0.1.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/exit/-/exit-0.1.2.tgz";
      name = "exit-0.1.2.tgz";
      sha1 = "0632638f8d877cc82107d30a0fff1a17cba1cd0c";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."express"."*" =
    self.by-version."express"."4.15.2";
  by-version."express"."4.15.2" = self.buildNodePackage {
    name = "express-4.15.2";
    version = "4.15.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/express/-/express-4.15.2.tgz";
      name = "express-4.15.2.tgz";
      sha1 = "af107fc148504457f2dca9a6f2571d7129b97b35";
    };
    deps = {
      "accepts-1.3.3" = self.by-version."accepts"."1.3.3";
      "array-flatten-1.1.1" = self.by-version."array-flatten"."1.1.1";
      "content-disposition-0.5.2" = self.by-version."content-disposition"."0.5.2";
      "content-type-1.0.2" = self.by-version."content-type"."1.0.2";
      "cookie-0.3.1" = self.by-version."cookie"."0.3.1";
      "cookie-signature-1.0.6" = self.by-version."cookie-signature"."1.0.6";
      "debug-2.6.1" = self.by-version."debug"."2.6.1";
      "depd-1.1.0" = self.by-version."depd"."1.1.0";
      "encodeurl-1.0.1" = self.by-version."encodeurl"."1.0.1";
      "escape-html-1.0.3" = self.by-version."escape-html"."1.0.3";
      "etag-1.8.0" = self.by-version."etag"."1.8.0";
      "finalhandler-1.0.1" = self.by-version."finalhandler"."1.0.1";
      "fresh-0.5.0" = self.by-version."fresh"."0.5.0";
      "merge-descriptors-1.0.1" = self.by-version."merge-descriptors"."1.0.1";
      "methods-1.1.2" = self.by-version."methods"."1.1.2";
      "on-finished-2.3.0" = self.by-version."on-finished"."2.3.0";
      "parseurl-1.3.1" = self.by-version."parseurl"."1.3.1";
      "path-to-regexp-0.1.7" = self.by-version."path-to-regexp"."0.1.7";
      "proxy-addr-1.1.4" = self.by-version."proxy-addr"."1.1.4";
      "qs-6.4.0" = self.by-version."qs"."6.4.0";
      "range-parser-1.2.0" = self.by-version."range-parser"."1.2.0";
      "send-0.15.1" = self.by-version."send"."0.15.1";
      "serve-static-1.12.1" = self.by-version."serve-static"."1.12.1";
      "setprototypeof-1.0.3" = self.by-version."setprototypeof"."1.0.3";
      "statuses-1.3.1" = self.by-version."statuses"."1.3.1";
      "type-is-1.6.15" = self.by-version."type-is"."1.6.15";
      "utils-merge-1.0.0" = self.by-version."utils-merge"."1.0.0";
      "vary-1.1.1" = self.by-version."vary"."1.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "express" = self.by-version."express"."4.15.2";
  by-spec."extend"."^3.0.0" =
    self.by-version."extend"."3.0.0";
  by-version."extend"."3.0.0" = self.buildNodePackage {
    name = "extend-3.0.0";
    version = "3.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/extend/-/extend-3.0.0.tgz";
      name = "extend-3.0.0.tgz";
      sha1 = "5a474353b9f3353ddd8176dfd37b91c83a46f1d4";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."extend"."~3.0.0" =
    self.by-version."extend"."3.0.0";
  by-spec."extsprintf"."1.0.2" =
    self.by-version."extsprintf"."1.0.2";
  by-version."extsprintf"."1.0.2" = self.buildNodePackage {
    name = "extsprintf-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/extsprintf/-/extsprintf-1.0.2.tgz";
      name = "extsprintf-1.0.2.tgz";
      sha1 = "e1080e0658e300b06294990cc70e1502235fd550";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."extsprintf"."1.0.3" =
    self.by-version."extsprintf"."1.0.3";
  by-version."extsprintf"."1.0.3" = self.buildNodePackage {
    name = "extsprintf-1.0.3";
    version = "1.0.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/extsprintf/-/extsprintf-1.0.3.tgz";
      name = "extsprintf-1.0.3.tgz";
      sha1 = "3310ca8ced5205e5234766b0b2744ea5b2788d67";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."fbjs"."^0.8.9" =
    self.by-version."fbjs"."0.8.12";
  by-version."fbjs"."0.8.12" = self.buildNodePackage {
    name = "fbjs-0.8.12";
    version = "0.8.12";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/fbjs/-/fbjs-0.8.12.tgz";
      name = "fbjs-0.8.12.tgz";
      sha1 = "10b5d92f76d45575fd63a217d4ea02bea2f8ed04";
    };
    deps = {
      "core-js-1.2.7" = self.by-version."core-js"."1.2.7";
      "isomorphic-fetch-2.2.1" = self.by-version."isomorphic-fetch"."2.2.1";
      "loose-envify-1.3.1" = self.by-version."loose-envify"."1.3.1";
      "object-assign-4.1.1" = self.by-version."object-assign"."4.1.1";
      "promise-7.1.1" = self.by-version."promise"."7.1.1";
      "setimmediate-1.0.5" = self.by-version."setimmediate"."1.0.5";
      "ua-parser-js-0.7.12" = self.by-version."ua-parser-js"."0.7.12";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."finalhandler"."~1.0.0" =
    self.by-version."finalhandler"."1.0.1";
  by-version."finalhandler"."1.0.1" = self.buildNodePackage {
    name = "finalhandler-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/finalhandler/-/finalhandler-1.0.1.tgz";
      name = "finalhandler-1.0.1.tgz";
      sha1 = "bcd15d1689c0e5ed729b6f7f541a6df984117db8";
    };
    deps = {
      "debug-2.6.3" = self.by-version."debug"."2.6.3";
      "encodeurl-1.0.1" = self.by-version."encodeurl"."1.0.1";
      "escape-html-1.0.3" = self.by-version."escape-html"."1.0.3";
      "on-finished-2.3.0" = self.by-version."on-finished"."2.3.0";
      "parseurl-1.3.1" = self.by-version."parseurl"."1.3.1";
      "statuses-1.3.1" = self.by-version."statuses"."1.3.1";
      "unpipe-1.0.0" = self.by-version."unpipe"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."foreach"."^2.0.4" =
    self.by-version."foreach"."2.0.5";
  by-version."foreach"."2.0.5" = self.buildNodePackage {
    name = "foreach-2.0.5";
    version = "2.0.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/foreach/-/foreach-2.0.5.tgz";
      name = "foreach-2.0.5.tgz";
      sha1 = "0bee005018aeb260d0a3af3ae658dd0136ec1b99";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."forever-agent"."~0.6.1" =
    self.by-version."forever-agent"."0.6.1";
  by-version."forever-agent"."0.6.1" = self.buildNodePackage {
    name = "forever-agent-0.6.1";
    version = "0.6.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/forever-agent/-/forever-agent-0.6.1.tgz";
      name = "forever-agent-0.6.1.tgz";
      sha1 = "fbc71f0c41adeb37f96c577ad1ed42d8fdacca91";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."form-data"."^2.1.1" =
    self.by-version."form-data"."2.1.4";
  by-version."form-data"."2.1.4" = self.buildNodePackage {
    name = "form-data-2.1.4";
    version = "2.1.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/form-data/-/form-data-2.1.4.tgz";
      name = "form-data-2.1.4.tgz";
      sha1 = "33c183acf193276ecaa98143a69e94bfee1750d1";
    };
    deps = {
      "asynckit-0.4.0" = self.by-version."asynckit"."0.4.0";
      "combined-stream-1.0.5" = self.by-version."combined-stream"."1.0.5";
      "mime-types-2.1.15" = self.by-version."mime-types"."2.1.15";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."form-data"."~2.1.1" =
    self.by-version."form-data"."2.1.4";
  by-spec."formatio"."1.2.0" =
    self.by-version."formatio"."1.2.0";
  by-version."formatio"."1.2.0" = self.buildNodePackage {
    name = "formatio-1.2.0";
    version = "1.2.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/formatio/-/formatio-1.2.0.tgz";
      name = "formatio-1.2.0.tgz";
      sha1 = "f3b2167d9068c4698a8d51f4f760a39a54d818eb";
    };
    deps = {
      "samsam-1.2.1" = self.by-version."samsam"."1.2.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."formidable"."^1.1.1" =
    self.by-version."formidable"."1.1.1";
  by-version."formidable"."1.1.1" = self.buildNodePackage {
    name = "formidable-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/formidable/-/formidable-1.1.1.tgz";
      name = "formidable-1.1.1.tgz";
      sha1 = "96b8886f7c3c3508b932d6bd70c4d3a88f35f1a9";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."forwarded"."~0.1.0" =
    self.by-version."forwarded"."0.1.0";
  by-version."forwarded"."0.1.0" = self.buildNodePackage {
    name = "forwarded-0.1.0";
    version = "0.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/forwarded/-/forwarded-0.1.0.tgz";
      name = "forwarded-0.1.0.tgz";
      sha1 = "19ef9874c4ae1c297bcf078fde63a09b66a84363";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."fresh"."0.5.0" =
    self.by-version."fresh"."0.5.0";
  by-version."fresh"."0.5.0" = self.buildNodePackage {
    name = "fresh-0.5.0";
    version = "0.5.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/fresh/-/fresh-0.5.0.tgz";
      name = "fresh-0.5.0.tgz";
      sha1 = "f474ca5e6a9246d6fd8e0953cfa9b9c805afa78e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."from"."~0" =
    self.by-version."from"."0.1.7";
  by-version."from"."0.1.7" = self.buildNodePackage {
    name = "from-0.1.7";
    version = "0.1.7";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/from/-/from-0.1.7.tgz";
      name = "from-0.1.7.tgz";
      sha1 = "83c60afc58b9c56997007ed1a768b3ab303a44fe";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."fs.realpath"."^1.0.0" =
    self.by-version."fs.realpath"."1.0.0";
  by-version."fs.realpath"."1.0.0" = self.buildNodePackage {
    name = "fs.realpath-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/fs.realpath/-/fs.realpath-1.0.0.tgz";
      name = "fs.realpath-1.0.0.tgz";
      sha1 = "1504ad2523158caa40db4a2787cb01411994ea4f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."get-stdin"."^0.1.0" =
    self.by-version."get-stdin"."0.1.0";
  by-version."get-stdin"."0.1.0" = self.buildNodePackage {
    name = "get-stdin-0.1.0";
    version = "0.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/get-stdin/-/get-stdin-0.1.0.tgz";
      name = "get-stdin-0.1.0.tgz";
      sha1 = "5998af24aafc802d15c82c685657eeb8b10d4a91";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."getpass"."^0.1.1" =
    self.by-version."getpass"."0.1.6";
  by-version."getpass"."0.1.6" = self.buildNodePackage {
    name = "getpass-0.1.6";
    version = "0.1.6";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/getpass/-/getpass-0.1.6.tgz";
      name = "getpass-0.1.6.tgz";
      sha1 = "283ffd9fc1256840875311c1b60e8c40187110e6";
    };
    deps = {
      "assert-plus-1.0.0" = self.by-version."assert-plus"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."glob"."7.0.5" =
    self.by-version."glob"."7.0.5";
  by-version."glob"."7.0.5" = self.buildNodePackage {
    name = "glob-7.0.5";
    version = "7.0.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/glob/-/glob-7.0.5.tgz";
      name = "glob-7.0.5.tgz";
      sha1 = "b4202a69099bbb4d292a7c1b95b6682b67ebdc95";
    };
    deps = {
      "fs.realpath-1.0.0" = self.by-version."fs.realpath"."1.0.0";
      "inflight-1.0.6" = self.by-version."inflight"."1.0.6";
      "inherits-2.0.3" = self.by-version."inherits"."2.0.3";
      "minimatch-3.0.3" = self.by-version."minimatch"."3.0.3";
      "once-1.4.0" = self.by-version."once"."1.4.0";
      "path-is-absolute-1.0.1" = self.by-version."path-is-absolute"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."glob"."^4.0.6" =
    self.by-version."glob"."4.5.3";
  by-version."glob"."4.5.3" = self.buildNodePackage {
    name = "glob-4.5.3";
    version = "4.5.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/glob/-/glob-4.5.3.tgz";
      name = "glob-4.5.3.tgz";
      sha1 = "c6cb73d3226c1efef04de3c56d012f03377ee15f";
    };
    deps = {
      "inflight-1.0.6" = self.by-version."inflight"."1.0.6";
      "inherits-2.0.3" = self.by-version."inherits"."2.0.3";
      "minimatch-2.0.10" = self.by-version."minimatch"."2.0.10";
      "once-1.4.0" = self.by-version."once"."1.4.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."got"."^3.2.0" =
    self.by-version."got"."3.3.1";
  by-version."got"."3.3.1" = self.buildNodePackage {
    name = "got-3.3.1";
    version = "3.3.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/got/-/got-3.3.1.tgz";
      name = "got-3.3.1.tgz";
      sha1 = "e5d0ed4af55fc3eef4d56007769d98192bcb2eca";
    };
    deps = {
      "duplexify-3.5.0" = self.by-version."duplexify"."3.5.0";
      "infinity-agent-2.0.3" = self.by-version."infinity-agent"."2.0.3";
      "is-redirect-1.0.0" = self.by-version."is-redirect"."1.0.0";
      "is-stream-1.1.0" = self.by-version."is-stream"."1.1.0";
      "lowercase-keys-1.0.0" = self.by-version."lowercase-keys"."1.0.0";
      "nested-error-stacks-1.0.2" = self.by-version."nested-error-stacks"."1.0.2";
      "object-assign-3.0.0" = self.by-version."object-assign"."3.0.0";
      "prepend-http-1.0.4" = self.by-version."prepend-http"."1.0.4";
      "read-all-stream-3.1.0" = self.by-version."read-all-stream"."3.1.0";
      "timed-out-2.0.0" = self.by-version."timed-out"."2.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."graceful-fs"."^3.0.1" =
    self.by-version."graceful-fs"."3.0.11";
  by-version."graceful-fs"."3.0.11" = self.buildNodePackage {
    name = "graceful-fs-3.0.11";
    version = "3.0.11";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/graceful-fs/-/graceful-fs-3.0.11.tgz";
      name = "graceful-fs-3.0.11.tgz";
      sha1 = "7613c778a1afea62f25c630a086d7f3acbbdd818";
    };
    deps = {
      "natives-1.1.0" = self.by-version."natives"."1.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."graceful-readlink".">= 1.0.0" =
    self.by-version."graceful-readlink"."1.0.1";
  by-version."graceful-readlink"."1.0.1" = self.buildNodePackage {
    name = "graceful-readlink-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/graceful-readlink/-/graceful-readlink-1.0.1.tgz";
      name = "graceful-readlink-1.0.1.tgz";
      sha1 = "4cafad76bc62f02fa039b2f94e9a3dd3a391a725";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."growl"."1.9.2" =
    self.by-version."growl"."1.9.2";
  by-version."growl"."1.9.2" = self.buildNodePackage {
    name = "growl-1.9.2";
    version = "1.9.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/growl/-/growl-1.9.2.tgz";
      name = "growl-1.9.2.tgz";
      sha1 = "0ea7743715db8d8de2c5ede1775e1b45ac85c02f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."har-schema"."^1.0.5" =
    self.by-version."har-schema"."1.0.5";
  by-version."har-schema"."1.0.5" = self.buildNodePackage {
    name = "har-schema-1.0.5";
    version = "1.0.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/har-schema/-/har-schema-1.0.5.tgz";
      name = "har-schema-1.0.5.tgz";
      sha1 = "d263135f43307c02c602afc8fe95970c0151369e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."har-validator"."~4.2.1" =
    self.by-version."har-validator"."4.2.1";
  by-version."har-validator"."4.2.1" = self.buildNodePackage {
    name = "har-validator-4.2.1";
    version = "4.2.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/har-validator/-/har-validator-4.2.1.tgz";
      name = "har-validator-4.2.1.tgz";
      sha1 = "33481d0f1bbff600dd203d75812a6a5fba002e2a";
    };
    deps = {
      "ajv-4.11.7" = self.by-version."ajv"."4.11.7";
      "har-schema-1.0.5" = self.by-version."har-schema"."1.0.5";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."has-ansi"."^0.1.0" =
    self.by-version."has-ansi"."0.1.0";
  by-version."has-ansi"."0.1.0" = self.buildNodePackage {
    name = "has-ansi-0.1.0";
    version = "0.1.0";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/has-ansi/-/has-ansi-0.1.0.tgz";
      name = "has-ansi-0.1.0.tgz";
      sha1 = "84f265aae8c0e6a88a12d7022894b7568894c62e";
    };
    deps = {
      "ansi-regex-0.2.1" = self.by-version."ansi-regex"."0.2.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."has-ansi"."^2.0.0" =
    self.by-version."has-ansi"."2.0.0";
  by-version."has-ansi"."2.0.0" = self.buildNodePackage {
    name = "has-ansi-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/has-ansi/-/has-ansi-2.0.0.tgz";
      name = "has-ansi-2.0.0.tgz";
      sha1 = "34f5049ce1ecdf2b0649af3ef24e45ed35416d91";
    };
    deps = {
      "ansi-regex-2.1.1" = self.by-version."ansi-regex"."2.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."has-flag"."^1.0.0" =
    self.by-version."has-flag"."1.0.0";
  by-version."has-flag"."1.0.0" = self.buildNodePackage {
    name = "has-flag-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/has-flag/-/has-flag-1.0.0.tgz";
      name = "has-flag-1.0.0.tgz";
      sha1 = "9d9e793165ce017a00f00418c43f942a7b1d11fa";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."hawk"."~3.1.3" =
    self.by-version."hawk"."3.1.3";
  by-version."hawk"."3.1.3" = self.buildNodePackage {
    name = "hawk-3.1.3";
    version = "3.1.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/hawk/-/hawk-3.1.3.tgz";
      name = "hawk-3.1.3.tgz";
      sha1 = "078444bd7c1640b0fe540d2c9b73d59678e8e1c4";
    };
    deps = {
      "hoek-2.16.3" = self.by-version."hoek"."2.16.3";
      "boom-2.10.1" = self.by-version."boom"."2.10.1";
      "cryptiles-2.0.5" = self.by-version."cryptiles"."2.0.5";
      "sntp-1.0.9" = self.by-version."sntp"."1.0.9";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."hkdf"."*" =
    self.by-version."hkdf"."0.0.2";
  by-version."hkdf"."0.0.2" = self.buildNodePackage {
    name = "hkdf-0.0.2";
    version = "0.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/hkdf/-/hkdf-0.0.2.tgz";
      name = "hkdf-0.0.2.tgz";
      sha1 = "2f8db615fdef870201f82d2b619ca6d347d0647e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "hkdf" = self.by-version."hkdf"."0.0.2";
  by-spec."hoek"."2.x.x" =
    self.by-version."hoek"."2.16.3";
  by-version."hoek"."2.16.3" = self.buildNodePackage {
    name = "hoek-2.16.3";
    version = "2.16.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/hoek/-/hoek-2.16.3.tgz";
      name = "hoek-2.16.3.tgz";
      sha1 = "20bb7403d3cea398e91dc4710a8ff1b8274a25ed";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."hoek"."^2.2.x" =
    self.by-version."hoek"."2.16.3";
  by-spec."http-errors"."~1.6.1" =
    self.by-version."http-errors"."1.6.1";
  by-version."http-errors"."1.6.1" = self.buildNodePackage {
    name = "http-errors-1.6.1";
    version = "1.6.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/http-errors/-/http-errors-1.6.1.tgz";
      name = "http-errors-1.6.1.tgz";
      sha1 = "5f8b8ed98aca545656bf572997387f904a722257";
    };
    deps = {
      "depd-1.1.0" = self.by-version."depd"."1.1.0";
      "inherits-2.0.3" = self.by-version."inherits"."2.0.3";
      "setprototypeof-1.0.3" = self.by-version."setprototypeof"."1.0.3";
      "statuses-1.3.1" = self.by-version."statuses"."1.3.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."http-signature"."~1.1.0" =
    self.by-version."http-signature"."1.1.1";
  by-version."http-signature"."1.1.1" = self.buildNodePackage {
    name = "http-signature-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/http-signature/-/http-signature-1.1.1.tgz";
      name = "http-signature-1.1.1.tgz";
      sha1 = "df72e267066cd0ac67fb76adf8e134a8fbcf91bf";
    };
    deps = {
      "assert-plus-0.2.0" = self.by-version."assert-plus"."0.2.0";
      "jsprim-1.4.0" = self.by-version."jsprim"."1.4.0";
      "sshpk-1.13.0" = self.by-version."sshpk"."1.13.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."iconv-lite"."0.4.15" =
    self.by-version."iconv-lite"."0.4.15";
  by-version."iconv-lite"."0.4.15" = self.buildNodePackage {
    name = "iconv-lite-0.4.15";
    version = "0.4.15";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/iconv-lite/-/iconv-lite-0.4.15.tgz";
      name = "iconv-lite-0.4.15.tgz";
      sha1 = "fe265a218ac6a57cfe854927e9d04c19825eddeb";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."iconv-lite"."~0.4.13" =
    self.by-version."iconv-lite"."0.4.15";
  by-spec."infinity-agent"."^2.0.0" =
    self.by-version."infinity-agent"."2.0.3";
  by-version."infinity-agent"."2.0.3" = self.buildNodePackage {
    name = "infinity-agent-2.0.3";
    version = "2.0.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/infinity-agent/-/infinity-agent-2.0.3.tgz";
      name = "infinity-agent-2.0.3.tgz";
      sha1 = "45e0e2ff7a9eb030b27d62b74b3744b7a7ac4216";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."inflight"."^1.0.4" =
    self.by-version."inflight"."1.0.6";
  by-version."inflight"."1.0.6" = self.buildNodePackage {
    name = "inflight-1.0.6";
    version = "1.0.6";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/inflight/-/inflight-1.0.6.tgz";
      name = "inflight-1.0.6.tgz";
      sha1 = "49bd6331d7d02d0c09bc910a1075ba8165b56df9";
    };
    deps = {
      "once-1.4.0" = self.by-version."once"."1.4.0";
      "wrappy-1.0.2" = self.by-version."wrappy"."1.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."inherits"."2" =
    self.by-version."inherits"."2.0.3";
  by-version."inherits"."2.0.3" = self.buildNodePackage {
    name = "inherits-2.0.3";
    version = "2.0.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/inherits/-/inherits-2.0.3.tgz";
      name = "inherits-2.0.3.tgz";
      sha1 = "633c2c83e3da42a502f52466022480f4208261de";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."inherits"."2.0.3" =
    self.by-version."inherits"."2.0.3";
  by-spec."inherits"."^2.0.1" =
    self.by-version."inherits"."2.0.3";
  by-spec."inherits"."~2.0.1" =
    self.by-version."inherits"."2.0.3";
  by-spec."ini"."~1.3.0" =
    self.by-version."ini"."1.3.4";
  by-version."ini"."1.3.4" = self.buildNodePackage {
    name = "ini-1.3.4";
    version = "1.3.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/ini/-/ini-1.3.4.tgz";
      name = "ini-1.3.4.tgz";
      sha1 = "0537cb79daf59b59a1a517dff706c86ec039162e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ipaddr.js"."1.3.0" =
    self.by-version."ipaddr.js"."1.3.0";
  by-version."ipaddr.js"."1.3.0" = self.buildNodePackage {
    name = "ipaddr.js-1.3.0";
    version = "1.3.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/ipaddr.js/-/ipaddr.js-1.3.0.tgz";
      name = "ipaddr.js-1.3.0.tgz";
      sha1 = "1e03a52fdad83a8bbb2b25cbf4998b4cffcd3dec";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-npm"."^1.0.0" =
    self.by-version."is-npm"."1.0.0";
  by-version."is-npm"."1.0.0" = self.buildNodePackage {
    name = "is-npm-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/is-npm/-/is-npm-1.0.0.tgz";
      name = "is-npm-1.0.0.tgz";
      sha1 = "f2fb63a65e4905b406c86072765a1a4dc793b9f4";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-redirect"."^1.0.0" =
    self.by-version."is-redirect"."1.0.0";
  by-version."is-redirect"."1.0.0" = self.buildNodePackage {
    name = "is-redirect-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/is-redirect/-/is-redirect-1.0.0.tgz";
      name = "is-redirect-1.0.0.tgz";
      sha1 = "1d03dded53bd8db0f30c26e4f95d36fc7c87dc24";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-stream"."^1.0.0" =
    self.by-version."is-stream"."1.1.0";
  by-version."is-stream"."1.1.0" = self.buildNodePackage {
    name = "is-stream-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/is-stream/-/is-stream-1.1.0.tgz";
      name = "is-stream-1.1.0.tgz";
      sha1 = "12d4a3dd4e68e0b79ceb8dbc84173ae80d91ca44";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-stream"."^1.0.1" =
    self.by-version."is-stream"."1.1.0";
  by-spec."is-typedarray"."~1.0.0" =
    self.by-version."is-typedarray"."1.0.0";
  by-version."is-typedarray"."1.0.0" = self.buildNodePackage {
    name = "is-typedarray-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/is-typedarray/-/is-typedarray-1.0.0.tgz";
      name = "is-typedarray-1.0.0.tgz";
      sha1 = "e479c80858df0c1b11ddda6940f96011fcda4a9a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."isarray"."0.0.1" =
    self.by-version."isarray"."0.0.1";
  by-version."isarray"."0.0.1" = self.buildNodePackage {
    name = "isarray-0.0.1";
    version = "0.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/isarray/-/isarray-0.0.1.tgz";
      name = "isarray-0.0.1.tgz";
      sha1 = "8a18acfca9a8f4177e09abfc6038939b05d1eedf";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."isarray"."~1.0.0" =
    self.by-version."isarray"."1.0.0";
  by-version."isarray"."1.0.0" = self.buildNodePackage {
    name = "isarray-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/isarray/-/isarray-1.0.0.tgz";
      name = "isarray-1.0.0.tgz";
      sha1 = "bb935d48582cba168c06834957a54a3e07124f11";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."isemail"."1.x.x" =
    self.by-version."isemail"."1.2.0";
  by-version."isemail"."1.2.0" = self.buildNodePackage {
    name = "isemail-1.2.0";
    version = "1.2.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/isemail/-/isemail-1.2.0.tgz";
      name = "isemail-1.2.0.tgz";
      sha1 = "be03df8cc3e29de4d2c5df6501263f1fa4595e9a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."isomorphic-fetch"."^2.1.1" =
    self.by-version."isomorphic-fetch"."2.2.1";
  by-version."isomorphic-fetch"."2.2.1" = self.buildNodePackage {
    name = "isomorphic-fetch-2.2.1";
    version = "2.2.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/isomorphic-fetch/-/isomorphic-fetch-2.2.1.tgz";
      name = "isomorphic-fetch-2.2.1.tgz";
      sha1 = "611ae1acf14f5e81f729507472819fe9733558a9";
    };
    deps = {
      "node-fetch-1.6.3" = self.by-version."node-fetch"."1.6.3";
      "whatwg-fetch-2.0.3" = self.by-version."whatwg-fetch"."2.0.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."isstream"."~0.1.2" =
    self.by-version."isstream"."0.1.2";
  by-version."isstream"."0.1.2" = self.buildNodePackage {
    name = "isstream-0.1.2";
    version = "0.1.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/isstream/-/isstream-0.1.2.tgz";
      name = "isstream-0.1.2.tgz";
      sha1 = "47e63f7af55afa6f92e1500e690eb8b8529c099a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."jodid25519"."^1.0.0" =
    self.by-version."jodid25519"."1.0.2";
  by-version."jodid25519"."1.0.2" = self.buildNodePackage {
    name = "jodid25519-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/jodid25519/-/jodid25519-1.0.2.tgz";
      name = "jodid25519-1.0.2.tgz";
      sha1 = "06d4912255093419477d425633606e0e90782967";
    };
    deps = {
      "jsbn-0.1.1" = self.by-version."jsbn"."0.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."joi"."^4.0.0" =
    self.by-version."joi"."4.9.0";
  by-version."joi"."4.9.0" = self.buildNodePackage {
    name = "joi-4.9.0";
    version = "4.9.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/joi/-/joi-4.9.0.tgz";
      name = "joi-4.9.0.tgz";
      sha1 = "2355023363089ca01bc1fd079e72949f977baada";
    };
    deps = {
      "hoek-2.16.3" = self.by-version."hoek"."2.16.3";
      "topo-1.1.0" = self.by-version."topo"."1.1.0";
      "isemail-1.2.0" = self.by-version."isemail"."1.2.0";
      "moment-2.18.1" = self.by-version."moment"."2.18.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."joi"."^4.7.0" =
    self.by-version."joi"."4.9.0";
  by-spec."joi-assert"."0.0.3" =
    self.by-version."joi-assert"."0.0.3";
  by-version."joi-assert"."0.0.3" = self.buildNodePackage {
    name = "joi-assert-0.0.3";
    version = "0.0.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/joi-assert/-/joi-assert-0.0.3.tgz";
      name = "joi-assert-0.0.3.tgz";
      sha1 = "77291376ac3f0b124f433f98db74b4f20f686fd6";
    };
    deps = {
      "assertion-error-1.0.2" = self.by-version."assertion-error"."1.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."js-tokens"."^3.0.0" =
    self.by-version."js-tokens"."3.0.1";
  by-version."js-tokens"."3.0.1" = self.buildNodePackage {
    name = "js-tokens-3.0.1";
    version = "3.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/js-tokens/-/js-tokens-3.0.1.tgz";
      name = "js-tokens-3.0.1.tgz";
      sha1 = "08e9f132484a2c45a30907e9dc4d5567b7f114d7";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."js-yaml"."^3.1.0" =
    self.by-version."js-yaml"."3.8.3";
  by-version."js-yaml"."3.8.3" = self.buildNodePackage {
    name = "js-yaml-3.8.3";
    version = "3.8.3";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/js-yaml/-/js-yaml-3.8.3.tgz";
      name = "js-yaml-3.8.3.tgz";
      sha1 = "33a05ec481c850c8875929166fe1beb61c728766";
    };
    deps = {
      "argparse-1.0.9" = self.by-version."argparse"."1.0.9";
      "esprima-3.1.3" = self.by-version."esprima"."3.1.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."jsbn"."~0.1.0" =
    self.by-version."jsbn"."0.1.1";
  by-version."jsbn"."0.1.1" = self.buildNodePackage {
    name = "jsbn-0.1.1";
    version = "0.1.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/jsbn/-/jsbn-0.1.1.tgz";
      name = "jsbn-0.1.1.tgz";
      sha1 = "a5e654c2e5a2deb5f201d96cefbca80c0ef2f513";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."jsesc"."^0.5.0" =
    self.by-version."jsesc"."0.5.0";
  by-version."jsesc"."0.5.0" = self.buildNodePackage {
    name = "jsesc-0.5.0";
    version = "0.5.0";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/jsesc/-/jsesc-0.5.0.tgz";
      name = "jsesc-0.5.0.tgz";
      sha1 = "e7dee66e35d6fc16f710fe91d5cf69f70f08911d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."json-pointer"."^0.2.2" =
    self.by-version."json-pointer"."0.2.2";
  by-version."json-pointer"."0.2.2" = self.buildNodePackage {
    name = "json-pointer-0.2.2";
    version = "0.2.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/json-pointer/-/json-pointer-0.2.2.tgz";
      name = "json-pointer-0.2.2.tgz";
      sha1 = "1a78285d4650c50b10475f7f59919a99db8a164b";
    };
    deps = {
      "foreach-2.0.5" = self.by-version."foreach"."2.0.5";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."json-schema"."0.2.3" =
    self.by-version."json-schema"."0.2.3";
  by-version."json-schema"."0.2.3" = self.buildNodePackage {
    name = "json-schema-0.2.3";
    version = "0.2.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/json-schema/-/json-schema-0.2.3.tgz";
      name = "json-schema-0.2.3.tgz";
      sha1 = "b480c892e59a2f05954ce727bd3f2a4e882f9e13";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."json-stable-stringify"."^1.0.1" =
    self.by-version."json-stable-stringify"."1.0.1";
  by-version."json-stable-stringify"."1.0.1" = self.buildNodePackage {
    name = "json-stable-stringify-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/json-stable-stringify/-/json-stable-stringify-1.0.1.tgz";
      name = "json-stable-stringify-1.0.1.tgz";
      sha1 = "9a759d39c5f2ff503fd5300646ed445f88c4f9af";
    };
    deps = {
      "jsonify-0.0.0" = self.by-version."jsonify"."0.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."json-stringify-safe"."~5.0.1" =
    self.by-version."json-stringify-safe"."5.0.1";
  by-version."json-stringify-safe"."5.0.1" = self.buildNodePackage {
    name = "json-stringify-safe-5.0.1";
    version = "5.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/json-stringify-safe/-/json-stringify-safe-5.0.1.tgz";
      name = "json-stringify-safe-5.0.1.tgz";
      sha1 = "1296a2d58fd45f19a0f6ce01d65701e2c735b6eb";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."json3"."3.3.2" =
    self.by-version."json3"."3.3.2";
  by-version."json3"."3.3.2" = self.buildNodePackage {
    name = "json3-3.3.2";
    version = "3.3.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/json3/-/json3-3.3.2.tgz";
      name = "json3-3.3.2.tgz";
      sha1 = "3c0434743df93e2f5c42aee7b19bcb483575f4e1";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."jsonify"."~0.0.0" =
    self.by-version."jsonify"."0.0.0";
  by-version."jsonify"."0.0.0" = self.buildNodePackage {
    name = "jsonify-0.0.0";
    version = "0.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/jsonify/-/jsonify-0.0.0.tgz";
      name = "jsonify-0.0.0.tgz";
      sha1 = "2c74b6ee41d93ca51b7b5aaee8f503631d252a73";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."jsprim"."^1.2.2" =
    self.by-version."jsprim"."1.4.0";
  by-version."jsprim"."1.4.0" = self.buildNodePackage {
    name = "jsprim-1.4.0";
    version = "1.4.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/jsprim/-/jsprim-1.4.0.tgz";
      name = "jsprim-1.4.0.tgz";
      sha1 = "a3b87e40298d8c380552d8cc7628a0bb95a22918";
    };
    deps = {
      "assert-plus-1.0.0" = self.by-version."assert-plus"."1.0.0";
      "extsprintf-1.0.2" = self.by-version."extsprintf"."1.0.2";
      "json-schema-0.2.3" = self.by-version."json-schema"."0.2.3";
      "verror-1.3.6" = self.by-version."verror"."1.3.6";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."latest-version"."^1.0.0" =
    self.by-version."latest-version"."1.0.1";
  by-version."latest-version"."1.0.1" = self.buildNodePackage {
    name = "latest-version-1.0.1";
    version = "1.0.1";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/latest-version/-/latest-version-1.0.1.tgz";
      name = "latest-version-1.0.1.tgz";
      sha1 = "72cfc46e3e8d1be651e1ebb54ea9f6ea96f374bb";
    };
    deps = {
      "package-json-1.2.0" = self.by-version."package-json"."1.2.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lazy.js"."~0.3.2" =
    self.by-version."lazy.js"."0.3.2";
  by-version."lazy.js"."0.3.2" = self.buildNodePackage {
    name = "lazy.js-0.3.2";
    version = "0.3.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lazy.js/-/lazy.js-0.3.2.tgz";
      name = "lazy.js-0.3.2.tgz";
      sha1 = "7cc1107e5f809ae70498f511dd180e1f80b4efa9";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash"."*" =
    self.by-version."lodash"."4.17.4";
  by-version."lodash"."4.17.4" = self.buildNodePackage {
    name = "lodash-4.17.4";
    version = "4.17.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lodash/-/lodash-4.17.4.tgz";
      name = "lodash-4.17.4.tgz";
      sha1 = "78203a4d1c328ae1d86dca6460e369b57f4055ae";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "lodash" = self.by-version."lodash"."4.17.4";
  by-spec."lodash._baseassign"."^3.0.0" =
    self.by-version."lodash._baseassign"."3.2.0";
  by-version."lodash._baseassign"."3.2.0" = self.buildNodePackage {
    name = "lodash._baseassign-3.2.0";
    version = "3.2.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lodash._baseassign/-/lodash._baseassign-3.2.0.tgz";
      name = "lodash._baseassign-3.2.0.tgz";
      sha1 = "8c38a099500f215ad09e59f1722fd0c52bfe0a4e";
    };
    deps = {
      "lodash._basecopy-3.0.1" = self.by-version."lodash._basecopy"."3.0.1";
      "lodash.keys-3.1.2" = self.by-version."lodash.keys"."3.1.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash._basecopy"."^3.0.0" =
    self.by-version."lodash._basecopy"."3.0.1";
  by-version."lodash._basecopy"."3.0.1" = self.buildNodePackage {
    name = "lodash._basecopy-3.0.1";
    version = "3.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lodash._basecopy/-/lodash._basecopy-3.0.1.tgz";
      name = "lodash._basecopy-3.0.1.tgz";
      sha1 = "8da0e6a876cf344c0ad8a54882111dd3c5c7ca36";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash._basecreate"."^3.0.0" =
    self.by-version."lodash._basecreate"."3.0.3";
  by-version."lodash._basecreate"."3.0.3" = self.buildNodePackage {
    name = "lodash._basecreate-3.0.3";
    version = "3.0.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lodash._basecreate/-/lodash._basecreate-3.0.3.tgz";
      name = "lodash._basecreate-3.0.3.tgz";
      sha1 = "1bc661614daa7fc311b7d03bf16806a0213cf821";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash._getnative"."^3.0.0" =
    self.by-version."lodash._getnative"."3.9.1";
  by-version."lodash._getnative"."3.9.1" = self.buildNodePackage {
    name = "lodash._getnative-3.9.1";
    version = "3.9.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lodash._getnative/-/lodash._getnative-3.9.1.tgz";
      name = "lodash._getnative-3.9.1.tgz";
      sha1 = "570bc7dede46d61cdcde687d65d3eecbaa3aaff5";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash._isiterateecall"."^3.0.0" =
    self.by-version."lodash._isiterateecall"."3.0.9";
  by-version."lodash._isiterateecall"."3.0.9" = self.buildNodePackage {
    name = "lodash._isiterateecall-3.0.9";
    version = "3.0.9";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lodash._isiterateecall/-/lodash._isiterateecall-3.0.9.tgz";
      name = "lodash._isiterateecall-3.0.9.tgz";
      sha1 = "5203ad7ba425fae842460e696db9cf3e6aac057c";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash.create"."3.1.1" =
    self.by-version."lodash.create"."3.1.1";
  by-version."lodash.create"."3.1.1" = self.buildNodePackage {
    name = "lodash.create-3.1.1";
    version = "3.1.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lodash.create/-/lodash.create-3.1.1.tgz";
      name = "lodash.create-3.1.1.tgz";
      sha1 = "d7f2849f0dbda7e04682bb8cd72ab022461debe7";
    };
    deps = {
      "lodash._baseassign-3.2.0" = self.by-version."lodash._baseassign"."3.2.0";
      "lodash._basecreate-3.0.3" = self.by-version."lodash._basecreate"."3.0.3";
      "lodash._isiterateecall-3.0.9" = self.by-version."lodash._isiterateecall"."3.0.9";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash.isarguments"."^3.0.0" =
    self.by-version."lodash.isarguments"."3.1.0";
  by-version."lodash.isarguments"."3.1.0" = self.buildNodePackage {
    name = "lodash.isarguments-3.1.0";
    version = "3.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lodash.isarguments/-/lodash.isarguments-3.1.0.tgz";
      name = "lodash.isarguments-3.1.0.tgz";
      sha1 = "2f573d85c6a24289ff00663b491c1d338ff3458a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash.isarray"."^3.0.0" =
    self.by-version."lodash.isarray"."3.0.4";
  by-version."lodash.isarray"."3.0.4" = self.buildNodePackage {
    name = "lodash.isarray-3.0.4";
    version = "3.0.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lodash.isarray/-/lodash.isarray-3.0.4.tgz";
      name = "lodash.isarray-3.0.4.tgz";
      sha1 = "79e4eb88c36a8122af86f844aa9bcd851b5fbb55";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash.keys"."^3.0.0" =
    self.by-version."lodash.keys"."3.1.2";
  by-version."lodash.keys"."3.1.2" = self.buildNodePackage {
    name = "lodash.keys-3.1.2";
    version = "3.1.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lodash.keys/-/lodash.keys-3.1.2.tgz";
      name = "lodash.keys-3.1.2.tgz";
      sha1 = "4dbc0472b156be50a0b286855d1bd0b0c656098a";
    };
    deps = {
      "lodash._getnative-3.9.1" = self.by-version."lodash._getnative"."3.9.1";
      "lodash.isarguments-3.1.0" = self.by-version."lodash.isarguments"."3.1.0";
      "lodash.isarray-3.0.4" = self.by-version."lodash.isarray"."3.0.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lolex"."^1.6.0" =
    self.by-version."lolex"."1.6.0";
  by-version."lolex"."1.6.0" = self.buildNodePackage {
    name = "lolex-1.6.0";
    version = "1.6.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lolex/-/lolex-1.6.0.tgz";
      name = "lolex-1.6.0.tgz";
      sha1 = "3a9a0283452a47d7439e72731b9e07d7386e49f6";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."long"."^2.2.0" =
    self.by-version."long"."2.4.0";
  by-version."long"."2.4.0" = self.buildNodePackage {
    name = "long-2.4.0";
    version = "2.4.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/long/-/long-2.4.0.tgz";
      name = "long-2.4.0.tgz";
      sha1 = "9fa180bb1d9500cdc29c4156766a1995e1f4524f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."loose-envify"."^1.0.0" =
    self.by-version."loose-envify"."1.3.1";
  by-version."loose-envify"."1.3.1" = self.buildNodePackage {
    name = "loose-envify-1.3.1";
    version = "1.3.1";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/loose-envify/-/loose-envify-1.3.1.tgz";
      name = "loose-envify-1.3.1.tgz";
      sha1 = "d1a8ad33fa9ce0e713d65fdd0ac8b748d478c848";
    };
    deps = {
      "js-tokens-3.0.1" = self.by-version."js-tokens"."3.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."loose-envify"."^1.1.0" =
    self.by-version."loose-envify"."1.3.1";
  by-spec."lowercase-keys"."^1.0.0" =
    self.by-version."lowercase-keys"."1.0.0";
  by-version."lowercase-keys"."1.0.0" = self.buildNodePackage {
    name = "lowercase-keys-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lowercase-keys/-/lowercase-keys-1.0.0.tgz";
      name = "lowercase-keys-1.0.0.tgz";
      sha1 = "4e3366b39e7f5457e35f1324bdf6f88d0bfc7306";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lru-cache"."2" =
    self.by-version."lru-cache"."2.7.3";
  by-version."lru-cache"."2.7.3" = self.buildNodePackage {
    name = "lru-cache-2.7.3";
    version = "2.7.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lru-cache/-/lru-cache-2.7.3.tgz";
      name = "lru-cache-2.7.3.tgz";
      sha1 = "6d4524e8b955f95d4f5b58851ce21dd72fb4e952";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lru-cache"."~2.5.0" =
    self.by-version."lru-cache"."2.5.2";
  by-version."lru-cache"."2.5.2" = self.buildNodePackage {
    name = "lru-cache-2.5.2";
    version = "2.5.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/lru-cache/-/lru-cache-2.5.2.tgz";
      name = "lru-cache-2.5.2.tgz";
      sha1 = "1fddad938aae1263ce138680be1b3f591c0ab41c";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."map-stream"."~0.1.0" =
    self.by-version."map-stream"."0.1.0";
  by-version."map-stream"."0.1.0" = self.buildNodePackage {
    name = "map-stream-0.1.0";
    version = "0.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/map-stream/-/map-stream-0.1.0.tgz";
      name = "map-stream-0.1.0.tgz";
      sha1 = "e56aa94c4c8055a16404a0674b78f215f7c8e194";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."marked"."*" =
    self.by-version."marked"."0.3.6";
  by-version."marked"."0.3.6" = self.buildNodePackage {
    name = "marked-0.3.6";
    version = "0.3.6";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/marked/-/marked-0.3.6.tgz";
      name = "marked-0.3.6.tgz";
      sha1 = "b2c6c618fccece4ef86c4fc6cb8a7cbf5aeda8d7";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "marked" = self.by-version."marked"."0.3.6";
  by-spec."media-typer"."0.3.0" =
    self.by-version."media-typer"."0.3.0";
  by-version."media-typer"."0.3.0" = self.buildNodePackage {
    name = "media-typer-0.3.0";
    version = "0.3.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/media-typer/-/media-typer-0.3.0.tgz";
      name = "media-typer-0.3.0.tgz";
      sha1 = "8710d7af0aa626f8fffa1ce00168545263255748";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."merge-descriptors"."1.0.1" =
    self.by-version."merge-descriptors"."1.0.1";
  by-version."merge-descriptors"."1.0.1" = self.buildNodePackage {
    name = "merge-descriptors-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/merge-descriptors/-/merge-descriptors-1.0.1.tgz";
      name = "merge-descriptors-1.0.1.tgz";
      sha1 = "b00aaa556dd8b44568150ec9d1b953f3f90cbb61";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."methods"."^1.1.1" =
    self.by-version."methods"."1.1.2";
  by-version."methods"."1.1.2" = self.buildNodePackage {
    name = "methods-1.1.2";
    version = "1.1.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/methods/-/methods-1.1.2.tgz";
      name = "methods-1.1.2.tgz";
      sha1 = "5529a4d67654134edcc5266656835b0f851afcee";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."methods"."~1.1.2" =
    self.by-version."methods"."1.1.2";
  by-spec."mime"."1.3.4" =
    self.by-version."mime"."1.3.4";
  by-version."mime"."1.3.4" = self.buildNodePackage {
    name = "mime-1.3.4";
    version = "1.3.4";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/mime/-/mime-1.3.4.tgz";
      name = "mime-1.3.4.tgz";
      sha1 = "115f9e3b6b3daf2959983cb38f149a2d40eb5d53";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mime"."^1.3.4" =
    self.by-version."mime"."1.3.4";
  by-spec."mime-db"."~1.27.0" =
    self.by-version."mime-db"."1.27.0";
  by-version."mime-db"."1.27.0" = self.buildNodePackage {
    name = "mime-db-1.27.0";
    version = "1.27.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/mime-db/-/mime-db-1.27.0.tgz";
      name = "mime-db-1.27.0.tgz";
      sha1 = "820f572296bbd20ec25ed55e5b5de869e5436eb1";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mime-types"."^2.1.12" =
    self.by-version."mime-types"."2.1.15";
  by-version."mime-types"."2.1.15" = self.buildNodePackage {
    name = "mime-types-2.1.15";
    version = "2.1.15";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/mime-types/-/mime-types-2.1.15.tgz";
      name = "mime-types-2.1.15.tgz";
      sha1 = "a4ebf5064094569237b8cf70046776d09fc92aed";
    };
    deps = {
      "mime-db-1.27.0" = self.by-version."mime-db"."1.27.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mime-types"."~2.1.11" =
    self.by-version."mime-types"."2.1.15";
  by-spec."mime-types"."~2.1.15" =
    self.by-version."mime-types"."2.1.15";
  by-spec."mime-types"."~2.1.7" =
    self.by-version."mime-types"."2.1.15";
  by-spec."minichain"."~0.0.1" =
    self.by-version."minichain"."0.0.1";
  by-version."minichain"."0.0.1" = self.buildNodePackage {
    name = "minichain-0.0.1";
    version = "0.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/minichain/-/minichain-0.0.1.tgz";
      name = "minichain-0.0.1.tgz";
      sha1 = "0bae49774170d8931401c271bb6ed6d3992a9f52";
    };
    deps = {
      "ministyle-0.1.4" = self.by-version."ministyle"."0.1.4";
      "miniwrite-0.1.4" = self.by-version."miniwrite"."0.1.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."minimatch"."^1.0.0" =
    self.by-version."minimatch"."1.0.0";
  by-version."minimatch"."1.0.0" = self.buildNodePackage {
    name = "minimatch-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/minimatch/-/minimatch-1.0.0.tgz";
      name = "minimatch-1.0.0.tgz";
      sha1 = "e0dd2120b49e1b724ce8d714c520822a9438576d";
    };
    deps = {
      "lru-cache-2.7.3" = self.by-version."lru-cache"."2.7.3";
      "sigmund-1.0.1" = self.by-version."sigmund"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."minimatch"."^2.0.1" =
    self.by-version."minimatch"."2.0.10";
  by-version."minimatch"."2.0.10" = self.buildNodePackage {
    name = "minimatch-2.0.10";
    version = "2.0.10";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/minimatch/-/minimatch-2.0.10.tgz";
      name = "minimatch-2.0.10.tgz";
      sha1 = "8d087c39c6b38c001b97fca7ce6d0e1e80afbac7";
    };
    deps = {
      "brace-expansion-1.1.7" = self.by-version."brace-expansion"."1.1.7";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."minimatch"."^3.0.2" =
    self.by-version."minimatch"."3.0.3";
  by-version."minimatch"."3.0.3" = self.buildNodePackage {
    name = "minimatch-3.0.3";
    version = "3.0.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/minimatch/-/minimatch-3.0.3.tgz";
      name = "minimatch-3.0.3.tgz";
      sha1 = "2a4e4090b96b2db06a9d7df01055a62a77c9b774";
    };
    deps = {
      "brace-expansion-1.1.7" = self.by-version."brace-expansion"."1.1.7";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."minimist"."0.0.8" =
    self.by-version."minimist"."0.0.8";
  by-version."minimist"."0.0.8" = self.buildNodePackage {
    name = "minimist-0.0.8";
    version = "0.0.8";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/minimist/-/minimist-0.0.8.tgz";
      name = "minimist-0.0.8.tgz";
      sha1 = "857fcabfc3397d2625b8228262e86aa7a011b05d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."minimist"."^0.1.0" =
    self.by-version."minimist"."0.1.0";
  by-version."minimist"."0.1.0" = self.buildNodePackage {
    name = "minimist-0.1.0";
    version = "0.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/minimist/-/minimist-0.1.0.tgz";
      name = "minimist-0.1.0.tgz";
      sha1 = "99df657a52574c21c9057497df742790b2b4c0de";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."minimist"."^1.1.0" =
    self.by-version."minimist"."1.2.0";
  by-version."minimist"."1.2.0" = self.buildNodePackage {
    name = "minimist-1.2.0";
    version = "1.2.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/minimist/-/minimist-1.2.0.tgz";
      name = "minimist-1.2.0.tgz";
      sha1 = "a35008b20f41383eec1fb914f4cd5df79a264284";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."minimist"."^1.2.0" =
    self.by-version."minimist"."1.2.0";
  by-spec."ministyle".">=0.1.2 >=0.1.3 <0.2.0" =
    self.by-version."ministyle"."0.1.4";
  by-version."ministyle"."0.1.4" = self.buildNodePackage {
    name = "ministyle-0.1.4";
    version = "0.1.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/ministyle/-/ministyle-0.1.4.tgz";
      name = "ministyle-0.1.4.tgz";
      sha1 = "b10481eb16aa8f7b6cd983817393a44da0e5a0cd";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ministyle"."~0.1.2" =
    self.by-version."ministyle"."0.1.4";
  by-spec."ministyle"."~0.1.3" =
    self.by-version."ministyle"."0.1.4";
  by-spec."minitable"."0.0.4" =
    self.by-version."minitable"."0.0.4";
  by-version."minitable"."0.0.4" = self.buildNodePackage {
    name = "minitable-0.0.4";
    version = "0.0.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/minitable/-/minitable-0.0.4.tgz";
      name = "minitable-0.0.4.tgz";
      sha1 = "8d61cb78fae6f371d8051ce77e8a7831ce3d5396";
    };
    deps = {
      "miniwrite-0.1.4" = self.by-version."miniwrite"."0.1.4";
      "minichain-0.0.1" = self.by-version."minichain"."0.0.1";
      "ministyle-0.1.4" = self.by-version."ministyle"."0.1.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."miniwrite"."~0.1.2" =
    self.by-version."miniwrite"."0.1.4";
  by-version."miniwrite"."0.1.4" = self.buildNodePackage {
    name = "miniwrite-0.1.4";
    version = "0.1.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/miniwrite/-/miniwrite-0.1.4.tgz";
      name = "miniwrite-0.1.4.tgz";
      sha1 = "72f02385c0ac37d542efe27dc6764b31908725ce";
    };
    deps = {
      "mkdirp-0.3.5" = self.by-version."mkdirp"."0.3.5";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."miniwrite"."~0.1.3" =
    self.by-version."miniwrite"."0.1.4";
  by-spec."mkdirp"."0.5.1" =
    self.by-version."mkdirp"."0.5.1";
  by-version."mkdirp"."0.5.1" = self.buildNodePackage {
    name = "mkdirp-0.5.1";
    version = "0.5.1";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/mkdirp/-/mkdirp-0.5.1.tgz";
      name = "mkdirp-0.5.1.tgz";
      sha1 = "30057438eac6cf7f8c4767f38648d6697d75c903";
    };
    deps = {
      "minimist-0.0.8" = self.by-version."minimist"."0.0.8";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mkdirp"."^0.5.0" =
    self.by-version."mkdirp"."0.5.1";
  by-spec."mkdirp"."~0.3.5" =
    self.by-version."mkdirp"."0.3.5";
  by-version."mkdirp"."0.3.5" = self.buildNodePackage {
    name = "mkdirp-0.3.5";
    version = "0.3.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/mkdirp/-/mkdirp-0.3.5.tgz";
      name = "mkdirp-0.3.5.tgz";
      sha1 = "de3e5f8961c88c787ee1368df849ac4413eca8d7";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mkdirp"."~0.5.0" =
    self.by-version."mkdirp"."0.5.1";
  by-spec."mocha"."*" =
    self.by-version."mocha"."3.2.0";
  by-version."mocha"."3.2.0" = self.buildNodePackage {
    name = "mocha-3.2.0";
    version = "3.2.0";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/mocha/-/mocha-3.2.0.tgz";
      name = "mocha-3.2.0.tgz";
      sha1 = "7dc4f45e5088075171a68896814e6ae9eb7a85e3";
    };
    deps = {
      "browser-stdout-1.3.0" = self.by-version."browser-stdout"."1.3.0";
      "commander-2.9.0" = self.by-version."commander"."2.9.0";
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "diff-1.4.0" = self.by-version."diff"."1.4.0";
      "escape-string-regexp-1.0.5" = self.by-version."escape-string-regexp"."1.0.5";
      "glob-7.0.5" = self.by-version."glob"."7.0.5";
      "growl-1.9.2" = self.by-version."growl"."1.9.2";
      "json3-3.3.2" = self.by-version."json3"."3.3.2";
      "lodash.create-3.1.1" = self.by-version."lodash.create"."3.1.1";
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "supports-color-3.1.2" = self.by-version."supports-color"."3.1.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "mocha" = self.by-version."mocha"."3.2.0";
  by-spec."moment"."*" =
    self.by-version."moment"."2.18.1";
  by-version."moment"."2.18.1" = self.buildNodePackage {
    name = "moment-2.18.1";
    version = "2.18.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/moment/-/moment-2.18.1.tgz";
      name = "moment-2.18.1.tgz";
      sha1 = "c36193dd3ce1c2eed2adb7c802dbbc77a81b1c0f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "moment" = self.by-version."moment"."2.18.1";
  by-spec."moment"."2.x.x" =
    self.by-version."moment"."2.18.1";
  by-spec."morgan"."*" =
    self.by-version."morgan"."1.8.1";
  by-version."morgan"."1.8.1" = self.buildNodePackage {
    name = "morgan-1.8.1";
    version = "1.8.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/morgan/-/morgan-1.8.1.tgz";
      name = "morgan-1.8.1.tgz";
      sha1 = "f93023d3887bd27b78dfd6023cea7892ee27a4b1";
    };
    deps = {
      "basic-auth-1.1.0" = self.by-version."basic-auth"."1.1.0";
      "debug-2.6.1" = self.by-version."debug"."2.6.1";
      "depd-1.1.0" = self.by-version."depd"."1.1.0";
      "on-finished-2.3.0" = self.by-version."on-finished"."2.3.0";
      "on-headers-1.0.1" = self.by-version."on-headers"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "morgan" = self.by-version."morgan"."1.8.1";
  by-spec."ms"."0.7.1" =
    self.by-version."ms"."0.7.1";
  by-version."ms"."0.7.1" = self.buildNodePackage {
    name = "ms-0.7.1";
    version = "0.7.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/ms/-/ms-0.7.1.tgz";
      name = "ms-0.7.1.tgz";
      sha1 = "9cd13c03adbff25b65effde7ce864ee952017098";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ms"."0.7.2" =
    self.by-version."ms"."0.7.2";
  by-version."ms"."0.7.2" = self.buildNodePackage {
    name = "ms-0.7.2";
    version = "0.7.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/ms/-/ms-0.7.2.tgz";
      name = "ms-0.7.2.tgz";
      sha1 = "ae25cf2512b3885a1d95d7f037868d8431124765";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."ms"."0.7.3" =
    self.by-version."ms"."0.7.3";
  by-version."ms"."0.7.3" = self.buildNodePackage {
    name = "ms-0.7.3";
    version = "0.7.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/ms/-/ms-0.7.3.tgz";
      name = "ms-0.7.3.tgz";
      sha1 = "708155a5e44e33f5fd0fc53e81d0d40a91be1fff";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."nan"."^2.4.0" =
    self.by-version."nan"."2.6.2";
  by-version."nan"."2.6.2" = self.buildNodePackage {
    name = "nan-2.6.2";
    version = "2.6.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/nan/-/nan-2.6.2.tgz";
      name = "nan-2.6.2.tgz";
      sha1 = "e4ff34e6c95fdfb5aecc08de6596f43605a7db45";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."native-promise-only"."^0.8.1" =
    self.by-version."native-promise-only"."0.8.1";
  by-version."native-promise-only"."0.8.1" = self.buildNodePackage {
    name = "native-promise-only-0.8.1";
    version = "0.8.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/native-promise-only/-/native-promise-only-0.8.1.tgz";
      name = "native-promise-only-0.8.1.tgz";
      sha1 = "20a318c30cb45f71fe7adfbf7b21c99c1472ef11";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."natives"."^1.1.0" =
    self.by-version."natives"."1.1.0";
  by-version."natives"."1.1.0" = self.buildNodePackage {
    name = "natives-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/natives/-/natives-1.1.0.tgz";
      name = "natives-1.1.0.tgz";
      sha1 = "e9ff841418a6b2ec7a495e939984f78f163e6e31";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."negotiator"."0.6.1" =
    self.by-version."negotiator"."0.6.1";
  by-version."negotiator"."0.6.1" = self.buildNodePackage {
    name = "negotiator-0.6.1";
    version = "0.6.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/negotiator/-/negotiator-0.6.1.tgz";
      name = "negotiator-0.6.1.tgz";
      sha1 = "2b327184e8992101177b28563fb5e7102acd0ca9";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."nested-error-stacks"."^1.0.0" =
    self.by-version."nested-error-stacks"."1.0.2";
  by-version."nested-error-stacks"."1.0.2" = self.buildNodePackage {
    name = "nested-error-stacks-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/nested-error-stacks/-/nested-error-stacks-1.0.2.tgz";
      name = "nested-error-stacks-1.0.2.tgz";
      sha1 = "19f619591519f096769a5ba9a86e6eeec823c3cf";
    };
    deps = {
      "inherits-2.0.3" = self.by-version."inherits"."2.0.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."node-fetch"."^1.0.1" =
    self.by-version."node-fetch"."1.6.3";
  by-version."node-fetch"."1.6.3" = self.buildNodePackage {
    name = "node-fetch-1.6.3";
    version = "1.6.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/node-fetch/-/node-fetch-1.6.3.tgz";
      name = "node-fetch-1.6.3.tgz";
      sha1 = "dc234edd6489982d58e8f0db4f695029abcd8c04";
    };
    deps = {
      "encoding-0.1.12" = self.by-version."encoding"."0.1.12";
      "is-stream-1.1.0" = self.by-version."is-stream"."1.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."node-uuid"."1.x" =
    self.by-version."node-uuid"."1.4.8";
  by-version."node-uuid"."1.4.8" = self.buildNodePackage {
    name = "node-uuid-1.4.8";
    version = "1.4.8";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/node-uuid/-/node-uuid-1.4.8.tgz";
      name = "node-uuid-1.4.8.tgz";
      sha1 = "b040eb0923968afabf8d32fb1f17f1167fdab907";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."oauth-sign"."~0.8.1" =
    self.by-version."oauth-sign"."0.8.2";
  by-version."oauth-sign"."0.8.2" = self.buildNodePackage {
    name = "oauth-sign-0.8.2";
    version = "0.8.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/oauth-sign/-/oauth-sign-0.8.2.tgz";
      name = "oauth-sign-0.8.2.tgz";
      sha1 = "46a6ab7f0aead8deae9ec0565780b7d4efeb9d43";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."object-assign"."^2.0.0" =
    self.by-version."object-assign"."2.1.1";
  by-version."object-assign"."2.1.1" = self.buildNodePackage {
    name = "object-assign-2.1.1";
    version = "2.1.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/object-assign/-/object-assign-2.1.1.tgz";
      name = "object-assign-2.1.1.tgz";
      sha1 = "43c36e5d569ff8e4816c4efa8be02d26967c18aa";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."object-assign"."^3.0.0" =
    self.by-version."object-assign"."3.0.0";
  by-version."object-assign"."3.0.0" = self.buildNodePackage {
    name = "object-assign-3.0.0";
    version = "3.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/object-assign/-/object-assign-3.0.0.tgz";
      name = "object-assign-3.0.0.tgz";
      sha1 = "9bedd5ca0897949bca47e7ff408062d549f587f2";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."object-assign"."^4.1.0" =
    self.by-version."object-assign"."4.1.1";
  by-version."object-assign"."4.1.1" = self.buildNodePackage {
    name = "object-assign-4.1.1";
    version = "4.1.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/object-assign/-/object-assign-4.1.1.tgz";
      name = "object-assign-4.1.1.tgz";
      sha1 = "2109adc7965887cfc05cbbd442cac8bfbb360863";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."on-finished"."~2.3.0" =
    self.by-version."on-finished"."2.3.0";
  by-version."on-finished"."2.3.0" = self.buildNodePackage {
    name = "on-finished-2.3.0";
    version = "2.3.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/on-finished/-/on-finished-2.3.0.tgz";
      name = "on-finished-2.3.0.tgz";
      sha1 = "20f1336481b083cd75337992a16971aa2d906947";
    };
    deps = {
      "ee-first-1.1.1" = self.by-version."ee-first"."1.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."on-headers"."~1.0.1" =
    self.by-version."on-headers"."1.0.1";
  by-version."on-headers"."1.0.1" = self.buildNodePackage {
    name = "on-headers-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/on-headers/-/on-headers-1.0.1.tgz";
      name = "on-headers-1.0.1.tgz";
      sha1 = "928f5d0f470d49342651ea6794b0857c100693f7";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."once"."^1.3.0" =
    self.by-version."once"."1.4.0";
  by-version."once"."1.4.0" = self.buildNodePackage {
    name = "once-1.4.0";
    version = "1.4.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/once/-/once-1.4.0.tgz";
      name = "once-1.4.0.tgz";
      sha1 = "583b1aa775961d4b113ac17d9c50baef9dd76bd1";
    };
    deps = {
      "wrappy-1.0.2" = self.by-version."wrappy"."1.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."once"."~1.3.0" =
    self.by-version."once"."1.3.3";
  by-version."once"."1.3.3" = self.buildNodePackage {
    name = "once-1.3.3";
    version = "1.3.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/once/-/once-1.3.3.tgz";
      name = "once-1.3.3.tgz";
      sha1 = "b2e261557ce4c314ec8304f3fa82663e4297ca20";
    };
    deps = {
      "wrappy-1.0.2" = self.by-version."wrappy"."1.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."open"."~0.0.5" =
    self.by-version."open"."0.0.5";
  by-version."open"."0.0.5" = self.buildNodePackage {
    name = "open-0.0.5";
    version = "0.0.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/open/-/open-0.0.5.tgz";
      name = "open-0.0.5.tgz";
      sha1 = "42c3e18ec95466b6bf0dc42f3a2945c3f0cad8fc";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."os-homedir"."^1.0.0" =
    self.by-version."os-homedir"."1.0.2";
  by-version."os-homedir"."1.0.2" = self.buildNodePackage {
    name = "os-homedir-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/os-homedir/-/os-homedir-1.0.2.tgz";
      name = "os-homedir-1.0.2.tgz";
      sha1 = "ffbc4988336e0e833de0c168c7ef152121aa7fb3";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."os-tmpdir"."^1.0.0" =
    self.by-version."os-tmpdir"."1.0.2";
  by-version."os-tmpdir"."1.0.2" = self.buildNodePackage {
    name = "os-tmpdir-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/os-tmpdir/-/os-tmpdir-1.0.2.tgz";
      name = "os-tmpdir-1.0.2.tgz";
      sha1 = "bbe67406c79aa85c5cfec766fe5734555dfa1274";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."osenv"."^0.1.0" =
    self.by-version."osenv"."0.1.4";
  by-version."osenv"."0.1.4" = self.buildNodePackage {
    name = "osenv-0.1.4";
    version = "0.1.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/osenv/-/osenv-0.1.4.tgz";
      name = "osenv-0.1.4.tgz";
      sha1 = "42fe6d5953df06c8064be6f176c3d05aaaa34644";
    };
    deps = {
      "os-homedir-1.0.2" = self.by-version."os-homedir"."1.0.2";
      "os-tmpdir-1.0.2" = self.by-version."os-tmpdir"."1.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."package-json"."^1.0.0" =
    self.by-version."package-json"."1.2.0";
  by-version."package-json"."1.2.0" = self.buildNodePackage {
    name = "package-json-1.2.0";
    version = "1.2.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/package-json/-/package-json-1.2.0.tgz";
      name = "package-json-1.2.0.tgz";
      sha1 = "c8ecac094227cdf76a316874ed05e27cc939a0e0";
    };
    deps = {
      "got-3.3.1" = self.by-version."got"."3.3.1";
      "registry-url-3.1.0" = self.by-version."registry-url"."3.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."parseurl"."~1.3.1" =
    self.by-version."parseurl"."1.3.1";
  by-version."parseurl"."1.3.1" = self.buildNodePackage {
    name = "parseurl-1.3.1";
    version = "1.3.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/parseurl/-/parseurl-1.3.1.tgz";
      name = "parseurl-1.3.1.tgz";
      sha1 = "c8ab8c9223ba34888aa64a297b28853bec18da56";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."parsimmon"."^0.5.0" =
    self.by-version."parsimmon"."0.5.1";
  by-version."parsimmon"."0.5.1" = self.buildNodePackage {
    name = "parsimmon-0.5.1";
    version = "0.5.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/parsimmon/-/parsimmon-0.5.1.tgz";
      name = "parsimmon-0.5.1.tgz";
      sha1 = "247c970d7d5e99a51115b16a106de96f0eb9303b";
    };
    deps = {
      "pjs-5.1.1" = self.by-version."pjs"."5.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."path-is-absolute"."^1.0.0" =
    self.by-version."path-is-absolute"."1.0.1";
  by-version."path-is-absolute"."1.0.1" = self.buildNodePackage {
    name = "path-is-absolute-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/path-is-absolute/-/path-is-absolute-1.0.1.tgz";
      name = "path-is-absolute-1.0.1.tgz";
      sha1 = "174b9268735534ffbc7ace6bf53a5a9e1b5c5f5f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."path-to-regexp"."0.1.7" =
    self.by-version."path-to-regexp"."0.1.7";
  by-version."path-to-regexp"."0.1.7" = self.buildNodePackage {
    name = "path-to-regexp-0.1.7";
    version = "0.1.7";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/path-to-regexp/-/path-to-regexp-0.1.7.tgz";
      name = "path-to-regexp-0.1.7.tgz";
      sha1 = "df604178005f522f15eb4490e7247a1bfaa67f8c";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."path-to-regexp"."^1.7.0" =
    self.by-version."path-to-regexp"."1.7.0";
  by-version."path-to-regexp"."1.7.0" = self.buildNodePackage {
    name = "path-to-regexp-1.7.0";
    version = "1.7.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/path-to-regexp/-/path-to-regexp-1.7.0.tgz";
      name = "path-to-regexp-1.7.0.tgz";
      sha1 = "59fde0f435badacba103a84e9d3bc64e96b9937d";
    };
    deps = {
      "isarray-0.0.1" = self.by-version."isarray"."0.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."pause-stream"."0.0.11" =
    self.by-version."pause-stream"."0.0.11";
  by-version."pause-stream"."0.0.11" = self.buildNodePackage {
    name = "pause-stream-0.0.11";
    version = "0.0.11";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/pause-stream/-/pause-stream-0.0.11.tgz";
      name = "pause-stream-0.0.11.tgz";
      sha1 = "fe5a34b0cbce12b5aa6a2b403ee2e73b602f1445";
    };
    deps = {
      "through-2.3.8" = self.by-version."through"."2.3.8";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."performance-now"."^0.2.0" =
    self.by-version."performance-now"."0.2.0";
  by-version."performance-now"."0.2.0" = self.buildNodePackage {
    name = "performance-now-0.2.0";
    version = "0.2.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/performance-now/-/performance-now-0.2.0.tgz";
      name = "performance-now-0.2.0.tgz";
      sha1 = "33ef30c5c77d4ea21c5a53869d91b56d8f2555e5";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."pinkie"."^2.0.0" =
    self.by-version."pinkie"."2.0.4";
  by-version."pinkie"."2.0.4" = self.buildNodePackage {
    name = "pinkie-2.0.4";
    version = "2.0.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/pinkie/-/pinkie-2.0.4.tgz";
      name = "pinkie-2.0.4.tgz";
      sha1 = "72556b80cfa0d48a974e80e77248e80ed4f7f870";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."pinkie-promise"."^2.0.0" =
    self.by-version."pinkie-promise"."2.0.1";
  by-version."pinkie-promise"."2.0.1" = self.buildNodePackage {
    name = "pinkie-promise-2.0.1";
    version = "2.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/pinkie-promise/-/pinkie-promise-2.0.1.tgz";
      name = "pinkie-promise-2.0.1.tgz";
      sha1 = "2135d6dfa7a358c069ac9b178776288228450ffa";
    };
    deps = {
      "pinkie-2.0.4" = self.by-version."pinkie"."2.0.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."pjs"."5.x" =
    self.by-version."pjs"."5.1.1";
  by-version."pjs"."5.1.1" = self.buildNodePackage {
    name = "pjs-5.1.1";
    version = "5.1.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/pjs/-/pjs-5.1.1.tgz";
      name = "pjs-5.1.1.tgz";
      sha1 = "9dfc4673bb01deffd6915fb1dec75827aba42abf";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."prepend-http"."^1.0.0" =
    self.by-version."prepend-http"."1.0.4";
  by-version."prepend-http"."1.0.4" = self.buildNodePackage {
    name = "prepend-http-1.0.4";
    version = "1.0.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/prepend-http/-/prepend-http-1.0.4.tgz";
      name = "prepend-http-1.0.4.tgz";
      sha1 = "d4f4562b0ce3696e41ac52d0e002e57a635dc6dc";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."process-nextick-args"."~1.0.6" =
    self.by-version."process-nextick-args"."1.0.7";
  by-version."process-nextick-args"."1.0.7" = self.buildNodePackage {
    name = "process-nextick-args-1.0.7";
    version = "1.0.7";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/process-nextick-args/-/process-nextick-args-1.0.7.tgz";
      name = "process-nextick-args-1.0.7.tgz";
      sha1 = "150e20b756590ad3f91093f25a4f2ad8bff30ba3";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."promise"."^7.1.1" =
    self.by-version."promise"."7.1.1";
  by-version."promise"."7.1.1" = self.buildNodePackage {
    name = "promise-7.1.1";
    version = "7.1.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/promise/-/promise-7.1.1.tgz";
      name = "promise-7.1.1.tgz";
      sha1 = "489654c692616b8aa55b0724fa809bb7db49c5bf";
    };
    deps = {
      "asap-2.0.5" = self.by-version."asap"."2.0.5";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."prop-types"."^15.5.7" =
    self.by-version."prop-types"."15.5.8";
  by-version."prop-types"."15.5.8" = self.buildNodePackage {
    name = "prop-types-15.5.8";
    version = "15.5.8";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/prop-types/-/prop-types-15.5.8.tgz";
      name = "prop-types-15.5.8.tgz";
      sha1 = "6b7b2e141083be38c8595aa51fc55775c7199394";
    };
    deps = {
      "fbjs-0.8.12" = self.by-version."fbjs"."0.8.12";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."proxy-addr"."~1.1.3" =
    self.by-version."proxy-addr"."1.1.4";
  by-version."proxy-addr"."1.1.4" = self.buildNodePackage {
    name = "proxy-addr-1.1.4";
    version = "1.1.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/proxy-addr/-/proxy-addr-1.1.4.tgz";
      name = "proxy-addr-1.1.4.tgz";
      sha1 = "27e545f6960a44a627d9b44467e35c1b6b4ce2f3";
    };
    deps = {
      "forwarded-0.1.0" = self.by-version."forwarded"."0.1.0";
      "ipaddr.js-1.3.0" = self.by-version."ipaddr.js"."1.3.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."punycode"."^1.4.1" =
    self.by-version."punycode"."1.4.1";
  by-version."punycode"."1.4.1" = self.buildNodePackage {
    name = "punycode-1.4.1";
    version = "1.4.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/punycode/-/punycode-1.4.1.tgz";
      name = "punycode-1.4.1.tgz";
      sha1 = "c0d5a63b2718800ad8e1eb0fa5269c84dd41845e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."qs"."6.4.0" =
    self.by-version."qs"."6.4.0";
  by-version."qs"."6.4.0" = self.buildNodePackage {
    name = "qs-6.4.0";
    version = "6.4.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/qs/-/qs-6.4.0.tgz";
      name = "qs-6.4.0.tgz";
      sha1 = "13e26d28ad6b0ffaa91312cd3bf708ed351e7233";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."qs"."^6.1.0" =
    self.by-version."qs"."6.4.0";
  by-spec."qs"."~6.4.0" =
    self.by-version."qs"."6.4.0";
  by-spec."range-parser"."~1.2.0" =
    self.by-version."range-parser"."1.2.0";
  by-version."range-parser"."1.2.0" = self.buildNodePackage {
    name = "range-parser-1.2.0";
    version = "1.2.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/range-parser/-/range-parser-1.2.0.tgz";
      name = "range-parser-1.2.0.tgz";
      sha1 = "f49be6b487894ddc40dcc94a322f611092e00d5e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."raw-body"."~2.2.0" =
    self.by-version."raw-body"."2.2.0";
  by-version."raw-body"."2.2.0" = self.buildNodePackage {
    name = "raw-body-2.2.0";
    version = "2.2.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/raw-body/-/raw-body-2.2.0.tgz";
      name = "raw-body-2.2.0.tgz";
      sha1 = "994976cf6a5096a41162840492f0bdc5d6e7fb96";
    };
    deps = {
      "bytes-2.4.0" = self.by-version."bytes"."2.4.0";
      "iconv-lite-0.4.15" = self.by-version."iconv-lite"."0.4.15";
      "unpipe-1.0.0" = self.by-version."unpipe"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."rc"."^1.0.1" =
    self.by-version."rc"."1.2.1";
  by-version."rc"."1.2.1" = self.buildNodePackage {
    name = "rc-1.2.1";
    version = "1.2.1";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/rc/-/rc-1.2.1.tgz";
      name = "rc-1.2.1.tgz";
      sha1 = "2e03e8e42ee450b8cb3dce65be1bf8974e1dfd95";
    };
    deps = {
      "deep-extend-0.4.1" = self.by-version."deep-extend"."0.4.1";
      "ini-1.3.4" = self.by-version."ini"."1.3.4";
      "minimist-1.2.0" = self.by-version."minimist"."1.2.0";
      "strip-json-comments-2.0.1" = self.by-version."strip-json-comments"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."react"."*" =
    self.by-version."react"."15.5.4";
  by-version."react"."15.5.4" = self.buildNodePackage {
    name = "react-15.5.4";
    version = "15.5.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/react/-/react-15.5.4.tgz";
      name = "react-15.5.4.tgz";
      sha1 = "fa83eb01506ab237cdc1c8c3b1cea8de012bf047";
    };
    deps = {
      "fbjs-0.8.12" = self.by-version."fbjs"."0.8.12";
      "loose-envify-1.3.1" = self.by-version."loose-envify"."1.3.1";
      "object-assign-4.1.1" = self.by-version."object-assign"."4.1.1";
      "prop-types-15.5.8" = self.by-version."prop-types"."15.5.8";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "react" = self.by-version."react"."15.5.4";
  by-spec."read-all-stream"."^3.0.0" =
    self.by-version."read-all-stream"."3.1.0";
  by-version."read-all-stream"."3.1.0" = self.buildNodePackage {
    name = "read-all-stream-3.1.0";
    version = "3.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/read-all-stream/-/read-all-stream-3.1.0.tgz";
      name = "read-all-stream-3.1.0.tgz";
      sha1 = "35c3e177f2078ef789ee4bfafa4373074eaef4fa";
    };
    deps = {
      "pinkie-promise-2.0.1" = self.by-version."pinkie-promise"."2.0.1";
      "readable-stream-2.2.9" = self.by-version."readable-stream"."2.2.9";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."readable-stream"."^2.0.0" =
    self.by-version."readable-stream"."2.2.9";
  by-version."readable-stream"."2.2.9" = self.buildNodePackage {
    name = "readable-stream-2.2.9";
    version = "2.2.9";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/readable-stream/-/readable-stream-2.2.9.tgz";
      name = "readable-stream-2.2.9.tgz";
      sha1 = "cf78ec6f4a6d1eb43d26488cac97f042e74b7fc8";
    };
    deps = {
      "buffer-shims-1.0.0" = self.by-version."buffer-shims"."1.0.0";
      "core-util-is-1.0.2" = self.by-version."core-util-is"."1.0.2";
      "isarray-1.0.0" = self.by-version."isarray"."1.0.0";
      "inherits-2.0.3" = self.by-version."inherits"."2.0.3";
      "process-nextick-args-1.0.7" = self.by-version."process-nextick-args"."1.0.7";
      "string_decoder-1.0.0" = self.by-version."string_decoder"."1.0.0";
      "util-deprecate-1.0.2" = self.by-version."util-deprecate"."1.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."readable-stream"."^2.0.5" =
    self.by-version."readable-stream"."2.2.9";
  by-spec."readable-stream"."~1.0.26" =
    self.by-version."readable-stream"."1.0.34";
  by-version."readable-stream"."1.0.34" = self.buildNodePackage {
    name = "readable-stream-1.0.34";
    version = "1.0.34";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/readable-stream/-/readable-stream-1.0.34.tgz";
      name = "readable-stream-1.0.34.tgz";
      sha1 = "125820e34bc842d2f2aaafafe4c2916ee32c157c";
    };
    deps = {
      "core-util-is-1.0.2" = self.by-version."core-util-is"."1.0.2";
      "isarray-0.0.1" = self.by-version."isarray"."0.0.1";
      "string_decoder-0.10.31" = self.by-version."string_decoder"."0.10.31";
      "inherits-2.0.3" = self.by-version."inherits"."2.0.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."registry-url"."^3.0.0" =
    self.by-version."registry-url"."3.1.0";
  by-version."registry-url"."3.1.0" = self.buildNodePackage {
    name = "registry-url-3.1.0";
    version = "3.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/registry-url/-/registry-url-3.1.0.tgz";
      name = "registry-url-3.1.0.tgz";
      sha1 = "3d4ef870f73dde1d77f0cf9a381432444e174942";
    };
    deps = {
      "rc-1.2.1" = self.by-version."rc"."1.2.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."request"."2.x" =
    self.by-version."request"."2.81.0";
  by-version."request"."2.81.0" = self.buildNodePackage {
    name = "request-2.81.0";
    version = "2.81.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/request/-/request-2.81.0.tgz";
      name = "request-2.81.0.tgz";
      sha1 = "c6928946a0e06c5f8d6f8a9333469ffda46298a0";
    };
    deps = {
      "aws-sign2-0.6.0" = self.by-version."aws-sign2"."0.6.0";
      "aws4-1.6.0" = self.by-version."aws4"."1.6.0";
      "caseless-0.12.0" = self.by-version."caseless"."0.12.0";
      "combined-stream-1.0.5" = self.by-version."combined-stream"."1.0.5";
      "extend-3.0.0" = self.by-version."extend"."3.0.0";
      "forever-agent-0.6.1" = self.by-version."forever-agent"."0.6.1";
      "form-data-2.1.4" = self.by-version."form-data"."2.1.4";
      "har-validator-4.2.1" = self.by-version."har-validator"."4.2.1";
      "hawk-3.1.3" = self.by-version."hawk"."3.1.3";
      "http-signature-1.1.1" = self.by-version."http-signature"."1.1.1";
      "is-typedarray-1.0.0" = self.by-version."is-typedarray"."1.0.0";
      "isstream-0.1.2" = self.by-version."isstream"."0.1.2";
      "json-stringify-safe-5.0.1" = self.by-version."json-stringify-safe"."5.0.1";
      "mime-types-2.1.15" = self.by-version."mime-types"."2.1.15";
      "oauth-sign-0.8.2" = self.by-version."oauth-sign"."0.8.2";
      "performance-now-0.2.0" = self.by-version."performance-now"."0.2.0";
      "qs-6.4.0" = self.by-version."qs"."6.4.0";
      "safe-buffer-5.0.1" = self.by-version."safe-buffer"."5.0.1";
      "stringstream-0.0.5" = self.by-version."stringstream"."0.0.5";
      "tough-cookie-2.3.2" = self.by-version."tough-cookie"."2.3.2";
      "tunnel-agent-0.6.0" = self.by-version."tunnel-agent"."0.6.0";
      "uuid-3.0.1" = self.by-version."uuid"."3.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."request"."^2.45.0" =
    self.by-version."request"."2.81.0";
  by-spec."rimraf"."~2.2.8" =
    self.by-version."rimraf"."2.2.8";
  by-version."rimraf"."2.2.8" = self.buildNodePackage {
    name = "rimraf-2.2.8";
    version = "2.2.8";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/rimraf/-/rimraf-2.2.8.tgz";
      name = "rimraf-2.2.8.tgz";
      sha1 = "e439be2aaee327321952730f99a8929e4fc50582";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."safe-buffer"."^5.0.1" =
    self.by-version."safe-buffer"."5.0.1";
  by-version."safe-buffer"."5.0.1" = self.buildNodePackage {
    name = "safe-buffer-5.0.1";
    version = "5.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/safe-buffer/-/safe-buffer-5.0.1.tgz";
      name = "safe-buffer-5.0.1.tgz";
      sha1 = "d263ca54696cd8a306b5ca6551e92de57918fbe7";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."samsam"."1.x" =
    self.by-version."samsam"."1.2.1";
  by-version."samsam"."1.2.1" = self.buildNodePackage {
    name = "samsam-1.2.1";
    version = "1.2.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/samsam/-/samsam-1.2.1.tgz";
      name = "samsam-1.2.1.tgz";
      sha1 = "edd39093a3184370cb859243b2bdf255e7d8ea67";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."samsam"."^1.1.3" =
    self.by-version."samsam"."1.2.1";
  by-spec."semver"."^4.3.1" =
    self.by-version."semver"."4.3.6";
  by-version."semver"."4.3.6" = self.buildNodePackage {
    name = "semver-4.3.6";
    version = "4.3.6";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/semver/-/semver-4.3.6.tgz";
      name = "semver-4.3.6.tgz";
      sha1 = "300bc6e0e86374f7ba61068b5b1ecd57fc6532da";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."semver"."^5.0.3" =
    self.by-version."semver"."5.3.0";
  by-version."semver"."5.3.0" = self.buildNodePackage {
    name = "semver-5.3.0";
    version = "5.3.0";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/semver/-/semver-5.3.0.tgz";
      name = "semver-5.3.0.tgz";
      sha1 = "9b2ce5d3de02d17c6012ad326aa6b4d0cf54f94f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."semver-diff"."^2.0.0" =
    self.by-version."semver-diff"."2.1.0";
  by-version."semver-diff"."2.1.0" = self.buildNodePackage {
    name = "semver-diff-2.1.0";
    version = "2.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/semver-diff/-/semver-diff-2.1.0.tgz";
      name = "semver-diff-2.1.0.tgz";
      sha1 = "4bbb8437c8d37e4b0cf1a68fd726ec6d645d6d36";
    };
    deps = {
      "semver-5.3.0" = self.by-version."semver"."5.3.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."send"."0.15.1" =
    self.by-version."send"."0.15.1";
  by-version."send"."0.15.1" = self.buildNodePackage {
    name = "send-0.15.1";
    version = "0.15.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/send/-/send-0.15.1.tgz";
      name = "send-0.15.1.tgz";
      sha1 = "8a02354c26e6f5cca700065f5f0cdeba90ec7b5f";
    };
    deps = {
      "debug-2.6.1" = self.by-version."debug"."2.6.1";
      "depd-1.1.0" = self.by-version."depd"."1.1.0";
      "destroy-1.0.4" = self.by-version."destroy"."1.0.4";
      "encodeurl-1.0.1" = self.by-version."encodeurl"."1.0.1";
      "escape-html-1.0.3" = self.by-version."escape-html"."1.0.3";
      "etag-1.8.0" = self.by-version."etag"."1.8.0";
      "fresh-0.5.0" = self.by-version."fresh"."0.5.0";
      "http-errors-1.6.1" = self.by-version."http-errors"."1.6.1";
      "mime-1.3.4" = self.by-version."mime"."1.3.4";
      "ms-0.7.2" = self.by-version."ms"."0.7.2";
      "on-finished-2.3.0" = self.by-version."on-finished"."2.3.0";
      "range-parser-1.2.0" = self.by-version."range-parser"."1.2.0";
      "statuses-1.3.1" = self.by-version."statuses"."1.3.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."serve-static"."1.12.1" =
    self.by-version."serve-static"."1.12.1";
  by-version."serve-static"."1.12.1" = self.buildNodePackage {
    name = "serve-static-1.12.1";
    version = "1.12.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/serve-static/-/serve-static-1.12.1.tgz";
      name = "serve-static-1.12.1.tgz";
      sha1 = "7443a965e3ced647aceb5639fa06bf4d1bbe0039";
    };
    deps = {
      "encodeurl-1.0.1" = self.by-version."encodeurl"."1.0.1";
      "escape-html-1.0.3" = self.by-version."escape-html"."1.0.3";
      "parseurl-1.3.1" = self.by-version."parseurl"."1.3.1";
      "send-0.15.1" = self.by-version."send"."0.15.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."setimmediate"."^1.0.5" =
    self.by-version."setimmediate"."1.0.5";
  by-version."setimmediate"."1.0.5" = self.buildNodePackage {
    name = "setimmediate-1.0.5";
    version = "1.0.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/setimmediate/-/setimmediate-1.0.5.tgz";
      name = "setimmediate-1.0.5.tgz";
      sha1 = "290cbb232e306942d7d7ea9b83732ab7856f8285";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."setprototypeof"."1.0.3" =
    self.by-version."setprototypeof"."1.0.3";
  by-version."setprototypeof"."1.0.3" = self.buildNodePackage {
    name = "setprototypeof-1.0.3";
    version = "1.0.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/setprototypeof/-/setprototypeof-1.0.3.tgz";
      name = "setprototypeof-1.0.3.tgz";
      sha1 = "66567e37043eeb4f04d91bd658c0cbefb55b8e04";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."sigmund"."~1.0.0" =
    self.by-version."sigmund"."1.0.1";
  by-version."sigmund"."1.0.1" = self.buildNodePackage {
    name = "sigmund-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/sigmund/-/sigmund-1.0.1.tgz";
      name = "sigmund-1.0.1.tgz";
      sha1 = "3ff21f198cad2175f9f3b781853fd94d0d19b590";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."sinon"."*" =
    self.by-version."sinon"."2.1.0";
  by-version."sinon"."2.1.0" = self.buildNodePackage {
    name = "sinon-2.1.0";
    version = "2.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/sinon/-/sinon-2.1.0.tgz";
      name = "sinon-2.1.0.tgz";
      sha1 = "e057a9d2bf1b32f5d6dd62628ca9ee3961b0cafb";
    };
    deps = {
      "diff-3.2.0" = self.by-version."diff"."3.2.0";
      "formatio-1.2.0" = self.by-version."formatio"."1.2.0";
      "lolex-1.6.0" = self.by-version."lolex"."1.6.0";
      "native-promise-only-0.8.1" = self.by-version."native-promise-only"."0.8.1";
      "path-to-regexp-1.7.0" = self.by-version."path-to-regexp"."1.7.0";
      "samsam-1.2.1" = self.by-version."samsam"."1.2.1";
      "text-encoding-0.6.4" = self.by-version."text-encoding"."0.6.4";
      "type-detect-4.0.3" = self.by-version."type-detect"."4.0.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "sinon" = self.by-version."sinon"."2.1.0";
  by-spec."sntp"."1.x.x" =
    self.by-version."sntp"."1.0.9";
  by-version."sntp"."1.0.9" = self.buildNodePackage {
    name = "sntp-1.0.9";
    version = "1.0.9";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/sntp/-/sntp-1.0.9.tgz";
      name = "sntp-1.0.9.tgz";
      sha1 = "6541184cc90aeea6c6e7b35e2659082443c66198";
    };
    deps = {
      "hoek-2.16.3" = self.by-version."hoek"."2.16.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."source-map"."^0.5.6" =
    self.by-version."source-map"."0.5.6";
  by-version."source-map"."0.5.6" = self.buildNodePackage {
    name = "source-map-0.5.6";
    version = "0.5.6";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/source-map/-/source-map-0.5.6.tgz";
      name = "source-map-0.5.6.tgz";
      sha1 = "75ce38f52bf0733c5a7f0c118d81334a2bb5f412";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."source-map-support"."*" =
    self.by-version."source-map-support"."0.4.14";
  by-version."source-map-support"."0.4.14" = self.buildNodePackage {
    name = "source-map-support-0.4.14";
    version = "0.4.14";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/source-map-support/-/source-map-support-0.4.14.tgz";
      name = "source-map-support-0.4.14.tgz";
      sha1 = "9d4463772598b86271b4f523f6c1f4e02a7d6aef";
    };
    deps = {
      "source-map-0.5.6" = self.by-version."source-map"."0.5.6";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "source-map-support" = self.by-version."source-map-support"."0.4.14";
  by-spec."split"."0.2" =
    self.by-version."split"."0.2.10";
  by-version."split"."0.2.10" = self.buildNodePackage {
    name = "split-0.2.10";
    version = "0.2.10";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/split/-/split-0.2.10.tgz";
      name = "split-0.2.10.tgz";
      sha1 = "67097c601d697ce1368f418f06cd201cf0521a57";
    };
    deps = {
      "through-2.3.8" = self.by-version."through"."2.3.8";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."sprintf-js"."~1.0.2" =
    self.by-version."sprintf-js"."1.0.3";
  by-version."sprintf-js"."1.0.3" = self.buildNodePackage {
    name = "sprintf-js-1.0.3";
    version = "1.0.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/sprintf-js/-/sprintf-js-1.0.3.tgz";
      name = "sprintf-js-1.0.3.tgz";
      sha1 = "04e6926f662895354f3dd015203633b857297e2c";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."sshpk"."^1.7.0" =
    self.by-version."sshpk"."1.13.0";
  by-version."sshpk"."1.13.0" = self.buildNodePackage {
    name = "sshpk-1.13.0";
    version = "1.13.0";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/sshpk/-/sshpk-1.13.0.tgz";
      name = "sshpk-1.13.0.tgz";
      sha1 = "ff2a3e4fd04497555fed97b39a0fd82fafb3a33c";
    };
    deps = {
      "asn1-0.2.3" = self.by-version."asn1"."0.2.3";
      "assert-plus-1.0.0" = self.by-version."assert-plus"."1.0.0";
      "dashdash-1.14.1" = self.by-version."dashdash"."1.14.1";
      "getpass-0.1.6" = self.by-version."getpass"."0.1.6";
    };
    optionalDependencies = {
      "jsbn-0.1.1" = self.by-version."jsbn"."0.1.1";
      "tweetnacl-0.14.5" = self.by-version."tweetnacl"."0.14.5";
      "jodid25519-1.0.2" = self.by-version."jodid25519"."1.0.2";
      "ecc-jsbn-0.1.1" = self.by-version."ecc-jsbn"."0.1.1";
      "bcrypt-pbkdf-1.0.1" = self.by-version."bcrypt-pbkdf"."1.0.1";
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."statuses".">= 1.3.1 < 2" =
    self.by-version."statuses"."1.3.1";
  by-version."statuses"."1.3.1" = self.buildNodePackage {
    name = "statuses-1.3.1";
    version = "1.3.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/statuses/-/statuses-1.3.1.tgz";
      name = "statuses-1.3.1.tgz";
      sha1 = "faf51b9eb74aaef3b3acf4ad5f61abf24cb7b93e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."statuses"."~1.3.1" =
    self.by-version."statuses"."1.3.1";
  by-spec."stream-combiner"."~0.0.4" =
    self.by-version."stream-combiner"."0.0.4";
  by-version."stream-combiner"."0.0.4" = self.buildNodePackage {
    name = "stream-combiner-0.0.4";
    version = "0.0.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/stream-combiner/-/stream-combiner-0.0.4.tgz";
      name = "stream-combiner-0.0.4.tgz";
      sha1 = "4d5e433c185261dde623ca3f44c586bcf5c4ad14";
    };
    deps = {
      "duplexer-0.1.1" = self.by-version."duplexer"."0.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."stream-shift"."^1.0.0" =
    self.by-version."stream-shift"."1.0.0";
  by-version."stream-shift"."1.0.0" = self.buildNodePackage {
    name = "stream-shift-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/stream-shift/-/stream-shift-1.0.0.tgz";
      name = "stream-shift-1.0.0.tgz";
      sha1 = "d5c752825e5367e786f78e18e445ea223a155952";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."string-length"."^1.0.0" =
    self.by-version."string-length"."1.0.1";
  by-version."string-length"."1.0.1" = self.buildNodePackage {
    name = "string-length-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/string-length/-/string-length-1.0.1.tgz";
      name = "string-length-1.0.1.tgz";
      sha1 = "56970fb1c38558e9e70b728bf3de269ac45adfac";
    };
    deps = {
      "strip-ansi-3.0.1" = self.by-version."strip-ansi"."3.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."string_decoder"."~0.10.x" =
    self.by-version."string_decoder"."0.10.31";
  by-version."string_decoder"."0.10.31" = self.buildNodePackage {
    name = "string_decoder-0.10.31";
    version = "0.10.31";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/string_decoder/-/string_decoder-0.10.31.tgz";
      name = "string_decoder-0.10.31.tgz";
      sha1 = "62e203bc41766c6c28c9fc84301dab1c5310fa94";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."string_decoder"."~1.0.0" =
    self.by-version."string_decoder"."1.0.0";
  by-version."string_decoder"."1.0.0" = self.buildNodePackage {
    name = "string_decoder-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/string_decoder/-/string_decoder-1.0.0.tgz";
      name = "string_decoder-1.0.0.tgz";
      sha1 = "f06f41157b664d86069f84bdbdc9b0d8ab281667";
    };
    deps = {
      "buffer-shims-1.0.0" = self.by-version."buffer-shims"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."stringstream"."~0.0.4" =
    self.by-version."stringstream"."0.0.5";
  by-version."stringstream"."0.0.5" = self.buildNodePackage {
    name = "stringstream-0.0.5";
    version = "0.0.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/stringstream/-/stringstream-0.0.5.tgz";
      name = "stringstream-0.0.5.tgz";
      sha1 = "4e484cd4de5a0bbbee18e46307710a8a81621878";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."strip-ansi"."^0.3.0" =
    self.by-version."strip-ansi"."0.3.0";
  by-version."strip-ansi"."0.3.0" = self.buildNodePackage {
    name = "strip-ansi-0.3.0";
    version = "0.3.0";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/strip-ansi/-/strip-ansi-0.3.0.tgz";
      name = "strip-ansi-0.3.0.tgz";
      sha1 = "25f48ea22ca79187f3174a4db8759347bb126220";
    };
    deps = {
      "ansi-regex-0.2.1" = self.by-version."ansi-regex"."0.2.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."strip-ansi"."^3.0.0" =
    self.by-version."strip-ansi"."3.0.1";
  by-version."strip-ansi"."3.0.1" = self.buildNodePackage {
    name = "strip-ansi-3.0.1";
    version = "3.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/strip-ansi/-/strip-ansi-3.0.1.tgz";
      name = "strip-ansi-3.0.1.tgz";
      sha1 = "6a385fb8853d952d5ff05d0e8aaf94278dc63dcf";
    };
    deps = {
      "ansi-regex-2.1.1" = self.by-version."ansi-regex"."2.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."strip-json-comments"."~2.0.1" =
    self.by-version."strip-json-comments"."2.0.1";
  by-version."strip-json-comments"."2.0.1" = self.buildNodePackage {
    name = "strip-json-comments-2.0.1";
    version = "2.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/strip-json-comments/-/strip-json-comments-2.0.1.tgz";
      name = "strip-json-comments-2.0.1.tgz";
      sha1 = "3c531942e908c2697c0ec344858c286c7ca0a60a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."striptags"."*" =
    self.by-version."striptags"."3.0.1";
  by-version."striptags"."3.0.1" = self.buildNodePackage {
    name = "striptags-3.0.1";
    version = "3.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/striptags/-/striptags-3.0.1.tgz";
      name = "striptags-3.0.1.tgz";
      sha1 = "48f0d6932549c47bb3582920c87527cf49a160c1";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "striptags" = self.by-version."striptags"."3.0.1";
  by-spec."superagent"."^3.0.0" =
    self.by-version."superagent"."3.5.2";
  by-version."superagent"."3.5.2" = self.buildNodePackage {
    name = "superagent-3.5.2";
    version = "3.5.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/superagent/-/superagent-3.5.2.tgz";
      name = "superagent-3.5.2.tgz";
      sha1 = "3361a3971567504c351063abeaae0faa23dbf3f8";
    };
    deps = {
      "component-emitter-1.2.1" = self.by-version."component-emitter"."1.2.1";
      "cookiejar-2.1.1" = self.by-version."cookiejar"."2.1.1";
      "debug-2.6.4" = self.by-version."debug"."2.6.4";
      "extend-3.0.0" = self.by-version."extend"."3.0.0";
      "form-data-2.1.4" = self.by-version."form-data"."2.1.4";
      "formidable-1.1.1" = self.by-version."formidable"."1.1.1";
      "methods-1.1.2" = self.by-version."methods"."1.1.2";
      "mime-1.3.4" = self.by-version."mime"."1.3.4";
      "qs-6.4.0" = self.by-version."qs"."6.4.0";
      "readable-stream-2.2.9" = self.by-version."readable-stream"."2.2.9";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."supertest"."*" =
    self.by-version."supertest"."3.0.0";
  by-version."supertest"."3.0.0" = self.buildNodePackage {
    name = "supertest-3.0.0";
    version = "3.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/supertest/-/supertest-3.0.0.tgz";
      name = "supertest-3.0.0.tgz";
      sha1 = "8d4bb68fd1830ee07033b1c5a5a9a4021c965296";
    };
    deps = {
      "superagent-3.5.2" = self.by-version."superagent"."3.5.2";
      "methods-1.1.2" = self.by-version."methods"."1.1.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "supertest" = self.by-version."supertest"."3.0.0";
  by-spec."supports-color"."3.1.2" =
    self.by-version."supports-color"."3.1.2";
  by-version."supports-color"."3.1.2" = self.buildNodePackage {
    name = "supports-color-3.1.2";
    version = "3.1.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/supports-color/-/supports-color-3.1.2.tgz";
      name = "supports-color-3.1.2.tgz";
      sha1 = "72a262894d9d408b956ca05ff37b2ed8a6e2a2d5";
    };
    deps = {
      "has-flag-1.0.0" = self.by-version."has-flag"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."supports-color"."^0.2.0" =
    self.by-version."supports-color"."0.2.0";
  by-version."supports-color"."0.2.0" = self.buildNodePackage {
    name = "supports-color-0.2.0";
    version = "0.2.0";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/supports-color/-/supports-color-0.2.0.tgz";
      name = "supports-color-0.2.0.tgz";
      sha1 = "d92de2694eb3f67323973d7ae3d8b55b4c22190a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."supports-color"."^2.0.0" =
    self.by-version."supports-color"."2.0.0";
  by-version."supports-color"."2.0.0" = self.buildNodePackage {
    name = "supports-color-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/supports-color/-/supports-color-2.0.0.tgz";
      name = "supports-color-2.0.0.tgz";
      sha1 = "535d045ce6b6363fa40117084629995e9df324c7";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."text-encoding"."0.6.4" =
    self.by-version."text-encoding"."0.6.4";
  by-version."text-encoding"."0.6.4" = self.buildNodePackage {
    name = "text-encoding-0.6.4";
    version = "0.6.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/text-encoding/-/text-encoding-0.6.4.tgz";
      name = "text-encoding-0.6.4.tgz";
      sha1 = "e399a982257a276dae428bb92845cb71bdc26d19";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."through"."2" =
    self.by-version."through"."2.3.8";
  by-version."through"."2.3.8" = self.buildNodePackage {
    name = "through-2.3.8";
    version = "2.3.8";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/through/-/through-2.3.8.tgz";
      name = "through-2.3.8.tgz";
      sha1 = "0dd4c9ffaabc357960b1b724115d7e0e86a2e1f5";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."through"."~2.3" =
    self.by-version."through"."2.3.8";
  by-spec."through"."~2.3.1" =
    self.by-version."through"."2.3.8";
  by-spec."timed-out"."^2.0.0" =
    self.by-version."timed-out"."2.0.0";
  by-version."timed-out"."2.0.0" = self.buildNodePackage {
    name = "timed-out-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/timed-out/-/timed-out-2.0.0.tgz";
      name = "timed-out-2.0.0.tgz";
      sha1 = "f38b0ae81d3747d628001f41dafc652ace671c0a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."topo"."1.x.x" =
    self.by-version."topo"."1.1.0";
  by-version."topo"."1.1.0" = self.buildNodePackage {
    name = "topo-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/topo/-/topo-1.1.0.tgz";
      name = "topo-1.1.0.tgz";
      sha1 = "e9d751615d1bb87dc865db182fa1ca0a5ef536d5";
    };
    deps = {
      "hoek-2.16.3" = self.by-version."hoek"."2.16.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."tough-cookie"."~2.3.0" =
    self.by-version."tough-cookie"."2.3.2";
  by-version."tough-cookie"."2.3.2" = self.buildNodePackage {
    name = "tough-cookie-2.3.2";
    version = "2.3.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/tough-cookie/-/tough-cookie-2.3.2.tgz";
      name = "tough-cookie-2.3.2.tgz";
      sha1 = "f081f76e4c85720e6c37a5faced737150d84072a";
    };
    deps = {
      "punycode-1.4.1" = self.by-version."punycode"."1.4.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."tsd"."*" =
    self.by-version."tsd"."0.6.5";
  by-version."tsd"."0.6.5" = self.buildNodePackage {
    name = "tsd-0.6.5";
    version = "0.6.5";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/tsd/-/tsd-0.6.5.tgz";
      name = "tsd-0.6.5.tgz";
      sha1 = "34a0b64c1db6a70b3860fe4f5571d9d1357421ad";
    };
    deps = {
      "assertion-error-1.0.0" = self.by-version."assertion-error"."1.0.0";
      "bl-0.9.5" = self.by-version."bl"."0.9.5";
      "bluebird-1.2.4" = self.by-version."bluebird"."1.2.4";
      "chalk-1.1.3" = self.by-version."chalk"."1.1.3";
      "colors-1.1.2" = self.by-version."colors"."1.1.2";
      "deep-freeze-0.0.1" = self.by-version."deep-freeze"."0.0.1";
      "definition-header-0.1.0" = self.by-version."definition-header"."0.1.0";
      "detect-indent-0.2.0" = self.by-version."detect-indent"."0.2.0";
      "diff-1.4.0" = self.by-version."diff"."1.4.0";
      "event-stream-3.1.7" = self.by-version."event-stream"."3.1.7";
      "exit-0.1.2" = self.by-version."exit"."0.1.2";
      "glob-4.5.3" = self.by-version."glob"."4.5.3";
      "joi-4.9.0" = self.by-version."joi"."4.9.0";
      "joi-assert-0.0.3" = self.by-version."joi-assert"."0.0.3";
      "jsesc-0.5.0" = self.by-version."jsesc"."0.5.0";
      "json-pointer-0.2.2" = self.by-version."json-pointer"."0.2.2";
      "lazy.js-0.3.2" = self.by-version."lazy.js"."0.3.2";
      "lru-cache-2.5.2" = self.by-version."lru-cache"."2.5.2";
      "minimatch-1.0.0" = self.by-version."minimatch"."1.0.0";
      "minimist-1.2.0" = self.by-version."minimist"."1.2.0";
      "ministyle-0.1.4" = self.by-version."ministyle"."0.1.4";
      "minitable-0.0.4" = self.by-version."minitable"."0.0.4";
      "miniwrite-0.1.4" = self.by-version."miniwrite"."0.1.4";
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "open-0.0.5" = self.by-version."open"."0.0.5";
      "request-2.81.0" = self.by-version."request"."2.81.0";
      "rimraf-2.2.8" = self.by-version."rimraf"."2.2.8";
      "semver-4.3.6" = self.by-version."semver"."4.3.6";
      "type-detect-0.1.2" = self.by-version."type-detect"."0.1.2";
      "universal-analytics-0.3.11" = self.by-version."universal-analytics"."0.3.11";
      "update-notifier-0.2.2" = self.by-version."update-notifier"."0.2.2";
      "uri-templates-0.1.9" = self.by-version."uri-templates"."0.1.9";
      "uuid-2.0.3" = self.by-version."uuid"."2.0.3";
      "verror-1.4.0" = self.by-version."verror"."1.4.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "tsd" = self.by-version."tsd"."0.6.5";
  by-spec."tunnel-agent"."^0.6.0" =
    self.by-version."tunnel-agent"."0.6.0";
  by-version."tunnel-agent"."0.6.0" = self.buildNodePackage {
    name = "tunnel-agent-0.6.0";
    version = "0.6.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/tunnel-agent/-/tunnel-agent-0.6.0.tgz";
      name = "tunnel-agent-0.6.0.tgz";
      sha1 = "27a5dea06b36b04a0a9966774b290868f0fc40fd";
    };
    deps = {
      "safe-buffer-5.0.1" = self.by-version."safe-buffer"."5.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."tweetnacl"."^0.14.3" =
    self.by-version."tweetnacl"."0.14.5";
  by-version."tweetnacl"."0.14.5" = self.buildNodePackage {
    name = "tweetnacl-0.14.5";
    version = "0.14.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/tweetnacl/-/tweetnacl-0.14.5.tgz";
      name = "tweetnacl-0.14.5.tgz";
      sha1 = "5ae68177f192d4456269d108afa93ff8743f4f64";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."tweetnacl"."~0.14.0" =
    self.by-version."tweetnacl"."0.14.5";
  by-spec."type-detect"."^4.0.0" =
    self.by-version."type-detect"."4.0.3";
  by-version."type-detect"."4.0.3" = self.buildNodePackage {
    name = "type-detect-4.0.3";
    version = "4.0.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/type-detect/-/type-detect-4.0.3.tgz";
      name = "type-detect-4.0.3.tgz";
      sha1 = "0e3f2670b44099b0b46c284d136a7ef49c74c2ea";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."type-detect"."~0.1.2" =
    self.by-version."type-detect"."0.1.2";
  by-version."type-detect"."0.1.2" = self.buildNodePackage {
    name = "type-detect-0.1.2";
    version = "0.1.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/type-detect/-/type-detect-0.1.2.tgz";
      name = "type-detect-0.1.2.tgz";
      sha1 = "c88e853e54e5abd88f1bf3194b477c853c94f854";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."type-is"."~1.6.14" =
    self.by-version."type-is"."1.6.15";
  by-version."type-is"."1.6.15" = self.buildNodePackage {
    name = "type-is-1.6.15";
    version = "1.6.15";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/type-is/-/type-is-1.6.15.tgz";
      name = "type-is-1.6.15.tgz";
      sha1 = "cab10fb4909e441c82842eafe1ad646c81804410";
    };
    deps = {
      "media-typer-0.3.0" = self.by-version."media-typer"."0.3.0";
      "mime-types-2.1.15" = self.by-version."mime-types"."2.1.15";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."typescript"."*" =
    self.by-version."typescript"."2.3.0";
  by-version."typescript"."2.3.0" = self.buildNodePackage {
    name = "typescript-2.3.0";
    version = "2.3.0";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/typescript/-/typescript-2.3.0.tgz";
      name = "typescript-2.3.0.tgz";
      sha1 = "2e63e09284392bc8158a2444c33e2093795c0418";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "typescript" = self.by-version."typescript"."2.3.0";
  by-spec."ua-parser-js"."^0.7.9" =
    self.by-version."ua-parser-js"."0.7.12";
  by-version."ua-parser-js"."0.7.12" = self.buildNodePackage {
    name = "ua-parser-js-0.7.12";
    version = "0.7.12";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/ua-parser-js/-/ua-parser-js-0.7.12.tgz";
      name = "ua-parser-js-0.7.12.tgz";
      sha1 = "04c81a99bdd5dc52263ea29d24c6bf8d4818a4bb";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."underscore"."1.x" =
    self.by-version."underscore"."1.8.3";
  by-version."underscore"."1.8.3" = self.buildNodePackage {
    name = "underscore-1.8.3";
    version = "1.8.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/underscore/-/underscore-1.8.3.tgz";
      name = "underscore-1.8.3.tgz";
      sha1 = "4f3fb53b106e6097fcf9cb4109f2a5e9bdfa5022";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."universal-analytics"."~0.3.4" =
    self.by-version."universal-analytics"."0.3.11";
  by-version."universal-analytics"."0.3.11" = self.buildNodePackage {
    name = "universal-analytics-0.3.11";
    version = "0.3.11";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/universal-analytics/-/universal-analytics-0.3.11.tgz";
      name = "universal-analytics-0.3.11.tgz";
      sha1 = "512879193a12a66dcbd9185121389bab913cd4b6";
    };
    deps = {
      "request-2.81.0" = self.by-version."request"."2.81.0";
      "underscore-1.8.3" = self.by-version."underscore"."1.8.3";
      "node-uuid-1.4.8" = self.by-version."node-uuid"."1.4.8";
      "async-0.2.10" = self.by-version."async"."0.2.10";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."unpipe"."1.0.0" =
    self.by-version."unpipe"."1.0.0";
  by-version."unpipe"."1.0.0" = self.buildNodePackage {
    name = "unpipe-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/unpipe/-/unpipe-1.0.0.tgz";
      name = "unpipe-1.0.0.tgz";
      sha1 = "b2bf4ee8514aae6165b4817829d21b2ef49904ec";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."unpipe"."~1.0.0" =
    self.by-version."unpipe"."1.0.0";
  by-spec."update-notifier"."^0.2.2" =
    self.by-version."update-notifier"."0.2.2";
  by-version."update-notifier"."0.2.2" = self.buildNodePackage {
    name = "update-notifier-0.2.2";
    version = "0.2.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/update-notifier/-/update-notifier-0.2.2.tgz";
      name = "update-notifier-0.2.2.tgz";
      sha1 = "e69b3a784b4e686a2acd98f5e66944591996e187";
    };
    deps = {
      "chalk-0.5.1" = self.by-version."chalk"."0.5.1";
      "configstore-0.3.2" = self.by-version."configstore"."0.3.2";
      "is-npm-1.0.0" = self.by-version."is-npm"."1.0.0";
      "latest-version-1.0.1" = self.by-version."latest-version"."1.0.1";
      "semver-diff-2.1.0" = self.by-version."semver-diff"."2.1.0";
      "string-length-1.0.1" = self.by-version."string-length"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."uri-templates"."~0.1.5" =
    self.by-version."uri-templates"."0.1.9";
  by-version."uri-templates"."0.1.9" = self.buildNodePackage {
    name = "uri-templates-0.1.9";
    version = "0.1.9";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/uri-templates/-/uri-templates-0.1.9.tgz";
      name = "uri-templates-0.1.9.tgz";
      sha1 = "c56f7a5731b3a310226695f6e5639180fd1aa249";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."user-home"."^1.0.0" =
    self.by-version."user-home"."1.1.1";
  by-version."user-home"."1.1.1" = self.buildNodePackage {
    name = "user-home-1.1.1";
    version = "1.1.1";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/user-home/-/user-home-1.1.1.tgz";
      name = "user-home-1.1.1.tgz";
      sha1 = "2b5be23a32b63a7c9deb8d0f28d485724a3df190";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."util-deprecate"."~1.0.1" =
    self.by-version."util-deprecate"."1.0.2";
  by-version."util-deprecate"."1.0.2" = self.buildNodePackage {
    name = "util-deprecate-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/util-deprecate/-/util-deprecate-1.0.2.tgz";
      name = "util-deprecate-1.0.2.tgz";
      sha1 = "450d4dc9fa70de732762fbd2d4a28981419a0ccf";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."utils-merge"."1.0.0" =
    self.by-version."utils-merge"."1.0.0";
  by-version."utils-merge"."1.0.0" = self.buildNodePackage {
    name = "utils-merge-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/utils-merge/-/utils-merge-1.0.0.tgz";
      name = "utils-merge-1.0.0.tgz";
      sha1 = "0294fb922bb9375153541c4f7096231f287c8af8";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."uuid"."*" =
    self.by-version."uuid"."3.0.1";
  by-version."uuid"."3.0.1" = self.buildNodePackage {
    name = "uuid-3.0.1";
    version = "3.0.1";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/uuid/-/uuid-3.0.1.tgz";
      name = "uuid-3.0.1.tgz";
      sha1 = "6544bba2dfda8c1cf17e629a3a305e2bb1fee6c1";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "uuid" = self.by-version."uuid"."3.0.1";
  by-spec."uuid"."^2.0.1" =
    self.by-version."uuid"."2.0.3";
  by-version."uuid"."2.0.3" = self.buildNodePackage {
    name = "uuid-2.0.3";
    version = "2.0.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/uuid/-/uuid-2.0.3.tgz";
      name = "uuid-2.0.3.tgz";
      sha1 = "67e2e863797215530dff318e5bf9dcebfd47b21a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."uuid"."^3.0.0" =
    self.by-version."uuid"."3.0.1";
  by-spec."vary"."~1.1.0" =
    self.by-version."vary"."1.1.1";
  by-version."vary"."1.1.1" = self.buildNodePackage {
    name = "vary-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/vary/-/vary-1.1.1.tgz";
      name = "vary-1.1.1.tgz";
      sha1 = "67535ebb694c1d52257457984665323f587e8d37";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."verror"."1.3.6" =
    self.by-version."verror"."1.3.6";
  by-version."verror"."1.3.6" = self.buildNodePackage {
    name = "verror-1.3.6";
    version = "1.3.6";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/verror/-/verror-1.3.6.tgz";
      name = "verror-1.3.6.tgz";
      sha1 = "cff5df12946d297d2baaefaa2689e25be01c005c";
    };
    deps = {
      "extsprintf-1.0.2" = self.by-version."extsprintf"."1.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."verror"."~1.4.0" =
    self.by-version."verror"."1.4.0";
  by-version."verror"."1.4.0" = self.buildNodePackage {
    name = "verror-1.4.0";
    version = "1.4.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/verror/-/verror-1.4.0.tgz";
      name = "verror-1.4.0.tgz";
      sha1 = "5d8fdf5875141c3183b7c6bc23a0aa3e3e6ca4e2";
    };
    deps = {
      "extsprintf-1.0.3" = self.by-version."extsprintf"."1.0.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."whatwg-fetch".">=0.10.0" =
    self.by-version."whatwg-fetch"."2.0.3";
  by-version."whatwg-fetch"."2.0.3" = self.buildNodePackage {
    name = "whatwg-fetch-2.0.3";
    version = "2.0.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/whatwg-fetch/-/whatwg-fetch-2.0.3.tgz";
      name = "whatwg-fetch-2.0.3.tgz";
      sha1 = "9c84ec2dcf68187ff00bc64e1274b442176e1c84";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."wrappy"."1" =
    self.by-version."wrappy"."1.0.2";
  by-version."wrappy"."1.0.2" = self.buildNodePackage {
    name = "wrappy-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/wrappy/-/wrappy-1.0.2.tgz";
      name = "wrappy-1.0.2.tgz";
      sha1 = "b5243d8f3ec1aa35f1364605bc0d1036e30ab69f";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."xdg-basedir"."^1.0.0" =
    self.by-version."xdg-basedir"."1.0.1";
  by-version."xdg-basedir"."1.0.1" = self.buildNodePackage {
    name = "xdg-basedir-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/xdg-basedir/-/xdg-basedir-1.0.1.tgz";
      name = "xdg-basedir-1.0.1.tgz";
      sha1 = "14ff8f63a4fdbcb05d5b6eea22b36f3033b9f04e";
    };
    deps = {
      "user-home-1.1.1" = self.by-version."user-home"."1.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."xregexp"."~2.0.0" =
    self.by-version."xregexp"."2.0.0";
  by-version."xregexp"."2.0.0" = self.buildNodePackage {
    name = "xregexp-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/xregexp/-/xregexp-2.0.0.tgz";
      name = "xregexp-2.0.0.tgz";
      sha1 = "52a63e56ca0b84a7f3a5f3d61872f126ad7a5943";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."xxhash"."*" =
    self.by-version."xxhash"."0.2.4";
  by-version."xxhash"."0.2.4" = self.buildNodePackage {
    name = "xxhash-0.2.4";
    version = "0.2.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/xxhash/-/xxhash-0.2.4.tgz";
      name = "xxhash-0.2.4.tgz";
      sha1 = "8b8a48162cfccc21b920fa500261187d40216c39";
    };
    deps = {
      "nan-2.6.2" = self.by-version."nan"."2.6.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "xxhash" = self.by-version."xxhash"."0.2.4";
}
