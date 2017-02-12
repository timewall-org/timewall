{ self, fetchurl, fetchgit ? null, lib }:

{
  by-spec."abbrev"."1" =
    self.by-version."abbrev"."1.0.9";
  by-version."abbrev"."1.0.9" = self.buildNodePackage {
    name = "abbrev-1.0.9";
    version = "1.0.9";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/abbrev/-/abbrev-1.0.9.tgz";
      name = "abbrev-1.0.9.tgz";
      sha1 = "91b4792588a7738c25f35dd6f63752a2f8776135";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
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
  by-spec."anymatch"."^1.3.0" =
    self.by-version."anymatch"."1.3.0";
  by-version."anymatch"."1.3.0" = self.buildNodePackage {
    name = "anymatch-1.3.0";
    version = "1.3.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/anymatch/-/anymatch-1.3.0.tgz";
      name = "anymatch-1.3.0.tgz";
      sha1 = "a3e52fa39168c825ff57b0248126ce5a8ff95507";
    };
    deps = {
      "arrify-1.0.1" = self.by-version."arrify"."1.0.1";
      "micromatch-2.3.11" = self.by-version."micromatch"."2.3.11";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."aproba"."^1.0.3" =
    self.by-version."aproba"."1.1.1";
  by-version."aproba"."1.1.1" = self.buildNodePackage {
    name = "aproba-1.1.1";
    version = "1.1.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/aproba/-/aproba-1.1.1.tgz";
      name = "aproba-1.1.1.tgz";
      sha1 = "95d3600f07710aa0e9298c726ad5ecf2eacbabab";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."are-we-there-yet"."~1.1.2" =
    self.by-version."are-we-there-yet"."1.1.2";
  by-version."are-we-there-yet"."1.1.2" = self.buildNodePackage {
    name = "are-we-there-yet-1.1.2";
    version = "1.1.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/are-we-there-yet/-/are-we-there-yet-1.1.2.tgz";
      name = "are-we-there-yet-1.1.2.tgz";
      sha1 = "80e470e95a084794fe1899262c5667c6e88de1b3";
    };
    deps = {
      "delegates-1.0.0" = self.by-version."delegates"."1.0.0";
      "readable-stream-2.2.2" = self.by-version."readable-stream"."2.2.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."arr-diff"."^2.0.0" =
    self.by-version."arr-diff"."2.0.0";
  by-version."arr-diff"."2.0.0" = self.buildNodePackage {
    name = "arr-diff-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/arr-diff/-/arr-diff-2.0.0.tgz";
      name = "arr-diff-2.0.0.tgz";
      sha1 = "8f3b827f955a8bd669697e4a4256ac3ceae356cf";
    };
    deps = {
      "arr-flatten-1.0.1" = self.by-version."arr-flatten"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."arr-flatten"."^1.0.1" =
    self.by-version."arr-flatten"."1.0.1";
  by-version."arr-flatten"."1.0.1" = self.buildNodePackage {
    name = "arr-flatten-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/arr-flatten/-/arr-flatten-1.0.1.tgz";
      name = "arr-flatten-1.0.1.tgz";
      sha1 = "e5ffe54d45e19f32f216e91eb99c8ce892bb604b";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."array-unique"."^0.2.1" =
    self.by-version."array-unique"."0.2.1";
  by-version."array-unique"."0.2.1" = self.buildNodePackage {
    name = "array-unique-0.2.1";
    version = "0.2.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/array-unique/-/array-unique-0.2.1.tgz";
      name = "array-unique-0.2.1.tgz";
      sha1 = "a1d97ccafcbc2625cc70fadceb36a50c58b01a53";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."arrify"."^1.0.0" =
    self.by-version."arrify"."1.0.1";
  by-version."arrify"."1.0.1" = self.buildNodePackage {
    name = "arrify-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/arrify/-/arrify-1.0.1.tgz";
      name = "arrify-1.0.1.tgz";
      sha1 = "898508da2226f380df904728456849c1501a4b0d";
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
  by-spec."async-each"."^1.0.0" =
    self.by-version."async-each"."1.0.1";
  by-version."async-each"."1.0.1" = self.buildNodePackage {
    name = "async-each-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/async-each/-/async-each-1.0.1.tgz";
      name = "async-each-1.0.1.tgz";
      sha1 = "19d386a1d9edc6e7c1c85d388aedbcc56d33602d";
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
  by-spec."babel-cli"."*" =
    self.by-version."babel-cli"."6.22.2";
  by-version."babel-cli"."6.22.2" = self.buildNodePackage {
    name = "babel-cli-6.22.2";
    version = "6.22.2";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-cli/-/babel-cli-6.22.2.tgz";
      name = "babel-cli-6.22.2.tgz";
      sha1 = "3f814c8acf52759082b8fedd9627f938936ab559";
    };
    deps = {
      "babel-core-6.22.1" = self.by-version."babel-core"."6.22.1";
      "babel-register-6.22.0" = self.by-version."babel-register"."6.22.0";
      "babel-polyfill-6.22.0" = self.by-version."babel-polyfill"."6.22.0";
      "babel-runtime-6.22.0" = self.by-version."babel-runtime"."6.22.0";
      "commander-2.9.0" = self.by-version."commander"."2.9.0";
      "convert-source-map-1.3.0" = self.by-version."convert-source-map"."1.3.0";
      "fs-readdir-recursive-1.0.0" = self.by-version."fs-readdir-recursive"."1.0.0";
      "glob-7.1.1" = self.by-version."glob"."7.1.1";
      "lodash-4.17.4" = self.by-version."lodash"."4.17.4";
      "output-file-sync-1.1.2" = self.by-version."output-file-sync"."1.1.2";
      "path-is-absolute-1.0.1" = self.by-version."path-is-absolute"."1.0.1";
      "slash-1.0.0" = self.by-version."slash"."1.0.0";
      "source-map-0.5.6" = self.by-version."source-map"."0.5.6";
      "v8flags-2.0.11" = self.by-version."v8flags"."2.0.11";
    };
    optionalDependencies = {
      "chokidar-1.6.1" = self.by-version."chokidar"."1.6.1";
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "babel-cli" = self.by-version."babel-cli"."6.22.2";
  by-spec."babel-code-frame"."^6.22.0" =
    self.by-version."babel-code-frame"."6.22.0";
  by-version."babel-code-frame"."6.22.0" = self.buildNodePackage {
    name = "babel-code-frame-6.22.0";
    version = "6.22.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-code-frame/-/babel-code-frame-6.22.0.tgz";
      name = "babel-code-frame-6.22.0.tgz";
      sha1 = "027620bee567a88c32561574e7fd0801d33118e4";
    };
    deps = {
      "chalk-1.1.3" = self.by-version."chalk"."1.1.3";
      "esutils-2.0.2" = self.by-version."esutils"."2.0.2";
      "js-tokens-3.0.1" = self.by-version."js-tokens"."3.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-core"."^6.22.0" =
    self.by-version."babel-core"."6.22.1";
  by-version."babel-core"."6.22.1" = self.buildNodePackage {
    name = "babel-core-6.22.1";
    version = "6.22.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-core/-/babel-core-6.22.1.tgz";
      name = "babel-core-6.22.1.tgz";
      sha1 = "9c5fd658ba1772d28d721f6d25d968fc7ae21648";
    };
    deps = {
      "babel-code-frame-6.22.0" = self.by-version."babel-code-frame"."6.22.0";
      "babel-generator-6.22.0" = self.by-version."babel-generator"."6.22.0";
      "babel-helpers-6.22.0" = self.by-version."babel-helpers"."6.22.0";
      "babel-messages-6.22.0" = self.by-version."babel-messages"."6.22.0";
      "babel-template-6.22.0" = self.by-version."babel-template"."6.22.0";
      "babel-runtime-6.22.0" = self.by-version."babel-runtime"."6.22.0";
      "babel-register-6.22.0" = self.by-version."babel-register"."6.22.0";
      "babel-traverse-6.22.1" = self.by-version."babel-traverse"."6.22.1";
      "babel-types-6.22.0" = self.by-version."babel-types"."6.22.0";
      "babylon-6.15.0" = self.by-version."babylon"."6.15.0";
      "convert-source-map-1.3.0" = self.by-version."convert-source-map"."1.3.0";
      "debug-2.6.1" = self.by-version."debug"."2.6.1";
      "json5-0.5.1" = self.by-version."json5"."0.5.1";
      "lodash-4.17.4" = self.by-version."lodash"."4.17.4";
      "minimatch-3.0.3" = self.by-version."minimatch"."3.0.3";
      "path-is-absolute-1.0.1" = self.by-version."path-is-absolute"."1.0.1";
      "private-0.1.7" = self.by-version."private"."0.1.7";
      "slash-1.0.0" = self.by-version."slash"."1.0.0";
      "source-map-0.5.6" = self.by-version."source-map"."0.5.6";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-core"."^6.22.1" =
    self.by-version."babel-core"."6.22.1";
  by-spec."babel-generator"."^6.22.0" =
    self.by-version."babel-generator"."6.22.0";
  by-version."babel-generator"."6.22.0" = self.buildNodePackage {
    name = "babel-generator-6.22.0";
    version = "6.22.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-generator/-/babel-generator-6.22.0.tgz";
      name = "babel-generator-6.22.0.tgz";
      sha1 = "d642bf4961911a8adc7c692b0c9297f325cda805";
    };
    deps = {
      "babel-messages-6.22.0" = self.by-version."babel-messages"."6.22.0";
      "babel-runtime-6.22.0" = self.by-version."babel-runtime"."6.22.0";
      "babel-types-6.22.0" = self.by-version."babel-types"."6.22.0";
      "detect-indent-4.0.0" = self.by-version."detect-indent"."4.0.0";
      "jsesc-1.3.0" = self.by-version."jsesc"."1.3.0";
      "lodash-4.17.4" = self.by-version."lodash"."4.17.4";
      "source-map-0.5.6" = self.by-version."source-map"."0.5.6";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-helper-builder-binary-assignment-operator-visitor"."^6.22.0" =
    self.by-version."babel-helper-builder-binary-assignment-operator-visitor"."6.22.0";
  by-version."babel-helper-builder-binary-assignment-operator-visitor"."6.22.0" = self.buildNodePackage {
    name = "babel-helper-builder-binary-assignment-operator-visitor-6.22.0";
    version = "6.22.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-helper-builder-binary-assignment-operator-visitor/-/babel-helper-builder-binary-assignment-operator-visitor-6.22.0.tgz";
      name = "babel-helper-builder-binary-assignment-operator-visitor-6.22.0.tgz";
      sha1 = "29df56be144d81bdeac08262bfa41d2c5e91cdcd";
    };
    deps = {
      "babel-helper-explode-assignable-expression-6.22.0" = self.by-version."babel-helper-explode-assignable-expression"."6.22.0";
      "babel-runtime-6.22.0" = self.by-version."babel-runtime"."6.22.0";
      "babel-types-6.22.0" = self.by-version."babel-types"."6.22.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-helper-builder-react-jsx"."^6.22.0" =
    self.by-version."babel-helper-builder-react-jsx"."6.22.0";
  by-version."babel-helper-builder-react-jsx"."6.22.0" = self.buildNodePackage {
    name = "babel-helper-builder-react-jsx-6.22.0";
    version = "6.22.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-helper-builder-react-jsx/-/babel-helper-builder-react-jsx-6.22.0.tgz";
      name = "babel-helper-builder-react-jsx-6.22.0.tgz";
      sha1 = "aafb31913e47761fd4d0b6987756a144a65fca0d";
    };
    deps = {
      "babel-runtime-6.22.0" = self.by-version."babel-runtime"."6.22.0";
      "babel-types-6.22.0" = self.by-version."babel-types"."6.22.0";
      "esutils-2.0.2" = self.by-version."esutils"."2.0.2";
      "lodash-4.17.4" = self.by-version."lodash"."4.17.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-helper-call-delegate"."^6.22.0" =
    self.by-version."babel-helper-call-delegate"."6.22.0";
  by-version."babel-helper-call-delegate"."6.22.0" = self.buildNodePackage {
    name = "babel-helper-call-delegate-6.22.0";
    version = "6.22.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-helper-call-delegate/-/babel-helper-call-delegate-6.22.0.tgz";
      name = "babel-helper-call-delegate-6.22.0.tgz";
      sha1 = "119921b56120f17e9dae3f74b4f5cc7bcc1b37ef";
    };
    deps = {
      "babel-traverse-6.22.1" = self.by-version."babel-traverse"."6.22.1";
      "babel-runtime-6.22.0" = self.by-version."babel-runtime"."6.22.0";
      "babel-types-6.22.0" = self.by-version."babel-types"."6.22.0";
      "babel-helper-hoist-variables-6.22.0" = self.by-version."babel-helper-hoist-variables"."6.22.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-helper-define-map"."^6.22.0" =
    self.by-version."babel-helper-define-map"."6.22.0";
  by-version."babel-helper-define-map"."6.22.0" = self.buildNodePackage {
    name = "babel-helper-define-map-6.22.0";
    version = "6.22.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-helper-define-map/-/babel-helper-define-map-6.22.0.tgz";
      name = "babel-helper-define-map-6.22.0.tgz";
      sha1 = "9544e9502b2d6dfe7d00ff60e82bd5a7a89e95b7";
    };
    deps = {
      "babel-runtime-6.22.0" = self.by-version."babel-runtime"."6.22.0";
      "lodash-4.17.4" = self.by-version."lodash"."4.17.4";
      "babel-types-6.22.0" = self.by-version."babel-types"."6.22.0";
      "babel-helper-function-name-6.22.0" = self.by-version."babel-helper-function-name"."6.22.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-helper-explode-assignable-expression"."^6.22.0" =
    self.by-version."babel-helper-explode-assignable-expression"."6.22.0";
  by-version."babel-helper-explode-assignable-expression"."6.22.0" = self.buildNodePackage {
    name = "babel-helper-explode-assignable-expression-6.22.0";
    version = "6.22.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-helper-explode-assignable-expression/-/babel-helper-explode-assignable-expression-6.22.0.tgz";
      name = "babel-helper-explode-assignable-expression-6.22.0.tgz";
      sha1 = "c97bf76eed3e0bae4048121f2b9dae1a4e7d0478";
    };
    deps = {
      "babel-traverse-6.22.1" = self.by-version."babel-traverse"."6.22.1";
      "babel-runtime-6.22.0" = self.by-version."babel-runtime"."6.22.0";
      "babel-types-6.22.0" = self.by-version."babel-types"."6.22.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-helper-function-name"."^6.22.0" =
    self.by-version."babel-helper-function-name"."6.22.0";
  by-version."babel-helper-function-name"."6.22.0" = self.buildNodePackage {
    name = "babel-helper-function-name-6.22.0";
    version = "6.22.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-helper-function-name/-/babel-helper-function-name-6.22.0.tgz";
      name = "babel-helper-function-name-6.22.0.tgz";
      sha1 = "51f1bdc4bb89b15f57a9b249f33d742816dcbefc";
    };
    deps = {
      "babel-runtime-6.22.0" = self.by-version."babel-runtime"."6.22.0";
      "babel-types-6.22.0" = self.by-version."babel-types"."6.22.0";
      "babel-traverse-6.22.1" = self.by-version."babel-traverse"."6.22.1";
      "babel-helper-get-function-arity-6.22.0" = self.by-version."babel-helper-get-function-arity"."6.22.0";
      "babel-template-6.22.0" = self.by-version."babel-template"."6.22.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-helper-get-function-arity"."^6.22.0" =
    self.by-version."babel-helper-get-function-arity"."6.22.0";
  by-version."babel-helper-get-function-arity"."6.22.0" = self.buildNodePackage {
    name = "babel-helper-get-function-arity-6.22.0";
    version = "6.22.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-helper-get-function-arity/-/babel-helper-get-function-arity-6.22.0.tgz";
      name = "babel-helper-get-function-arity-6.22.0.tgz";
      sha1 = "0beb464ad69dc7347410ac6ade9f03a50634f5ce";
    };
    deps = {
      "babel-runtime-6.22.0" = self.by-version."babel-runtime"."6.22.0";
      "babel-types-6.22.0" = self.by-version."babel-types"."6.22.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-helper-hoist-variables"."^6.22.0" =
    self.by-version."babel-helper-hoist-variables"."6.22.0";
  by-version."babel-helper-hoist-variables"."6.22.0" = self.buildNodePackage {
    name = "babel-helper-hoist-variables-6.22.0";
    version = "6.22.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-helper-hoist-variables/-/babel-helper-hoist-variables-6.22.0.tgz";
      name = "babel-helper-hoist-variables-6.22.0.tgz";
      sha1 = "3eacbf731d80705845dd2e9718f600cfb9b4ba72";
    };
    deps = {
      "babel-runtime-6.22.0" = self.by-version."babel-runtime"."6.22.0";
      "babel-types-6.22.0" = self.by-version."babel-types"."6.22.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-helper-optimise-call-expression"."^6.22.0" =
    self.by-version."babel-helper-optimise-call-expression"."6.22.0";
  by-version."babel-helper-optimise-call-expression"."6.22.0" = self.buildNodePackage {
    name = "babel-helper-optimise-call-expression-6.22.0";
    version = "6.22.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-helper-optimise-call-expression/-/babel-helper-optimise-call-expression-6.22.0.tgz";
      name = "babel-helper-optimise-call-expression-6.22.0.tgz";
      sha1 = "f8d5d4b40a6e2605a6a7f9d537b581bea3756d15";
    };
    deps = {
      "babel-runtime-6.22.0" = self.by-version."babel-runtime"."6.22.0";
      "babel-types-6.22.0" = self.by-version."babel-types"."6.22.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-helper-regex"."^6.22.0" =
    self.by-version."babel-helper-regex"."6.22.0";
  by-version."babel-helper-regex"."6.22.0" = self.buildNodePackage {
    name = "babel-helper-regex-6.22.0";
    version = "6.22.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-helper-regex/-/babel-helper-regex-6.22.0.tgz";
      name = "babel-helper-regex-6.22.0.tgz";
      sha1 = "79f532be1647b1f0ee3474b5f5c3da58001d247d";
    };
    deps = {
      "babel-runtime-6.22.0" = self.by-version."babel-runtime"."6.22.0";
      "lodash-4.17.4" = self.by-version."lodash"."4.17.4";
      "babel-types-6.22.0" = self.by-version."babel-types"."6.22.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-helper-remap-async-to-generator"."^6.22.0" =
    self.by-version."babel-helper-remap-async-to-generator"."6.22.0";
  by-version."babel-helper-remap-async-to-generator"."6.22.0" = self.buildNodePackage {
    name = "babel-helper-remap-async-to-generator-6.22.0";
    version = "6.22.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-helper-remap-async-to-generator/-/babel-helper-remap-async-to-generator-6.22.0.tgz";
      name = "babel-helper-remap-async-to-generator-6.22.0.tgz";
      sha1 = "2186ae73278ed03b8b15ced089609da981053383";
    };
    deps = {
      "babel-runtime-6.22.0" = self.by-version."babel-runtime"."6.22.0";
      "babel-template-6.22.0" = self.by-version."babel-template"."6.22.0";
      "babel-types-6.22.0" = self.by-version."babel-types"."6.22.0";
      "babel-traverse-6.22.1" = self.by-version."babel-traverse"."6.22.1";
      "babel-helper-function-name-6.22.0" = self.by-version."babel-helper-function-name"."6.22.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-helper-replace-supers"."^6.22.0" =
    self.by-version."babel-helper-replace-supers"."6.22.0";
  by-version."babel-helper-replace-supers"."6.22.0" = self.buildNodePackage {
    name = "babel-helper-replace-supers-6.22.0";
    version = "6.22.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-helper-replace-supers/-/babel-helper-replace-supers-6.22.0.tgz";
      name = "babel-helper-replace-supers-6.22.0.tgz";
      sha1 = "1fcee2270657548908c34db16bcc345f9850cf42";
    };
    deps = {
      "babel-helper-optimise-call-expression-6.22.0" = self.by-version."babel-helper-optimise-call-expression"."6.22.0";
      "babel-runtime-6.22.0" = self.by-version."babel-runtime"."6.22.0";
      "babel-traverse-6.22.1" = self.by-version."babel-traverse"."6.22.1";
      "babel-messages-6.22.0" = self.by-version."babel-messages"."6.22.0";
      "babel-template-6.22.0" = self.by-version."babel-template"."6.22.0";
      "babel-types-6.22.0" = self.by-version."babel-types"."6.22.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-helpers"."^6.22.0" =
    self.by-version."babel-helpers"."6.22.0";
  by-version."babel-helpers"."6.22.0" = self.buildNodePackage {
    name = "babel-helpers-6.22.0";
    version = "6.22.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-helpers/-/babel-helpers-6.22.0.tgz";
      name = "babel-helpers-6.22.0.tgz";
      sha1 = "d275f55f2252b8101bff07bc0c556deda657392c";
    };
    deps = {
      "babel-runtime-6.22.0" = self.by-version."babel-runtime"."6.22.0";
      "babel-template-6.22.0" = self.by-version."babel-template"."6.22.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-messages"."^6.22.0" =
    self.by-version."babel-messages"."6.22.0";
  by-version."babel-messages"."6.22.0" = self.buildNodePackage {
    name = "babel-messages-6.22.0";
    version = "6.22.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-messages/-/babel-messages-6.22.0.tgz";
      name = "babel-messages-6.22.0.tgz";
      sha1 = "36066a214f1217e4ed4164867669ecb39e3ea575";
    };
    deps = {
      "babel-runtime-6.22.0" = self.by-version."babel-runtime"."6.22.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-check-es2015-constants"."^6.22.0" =
    self.by-version."babel-plugin-check-es2015-constants"."6.22.0";
  by-version."babel-plugin-check-es2015-constants"."6.22.0" = self.buildNodePackage {
    name = "babel-plugin-check-es2015-constants-6.22.0";
    version = "6.22.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-check-es2015-constants/-/babel-plugin-check-es2015-constants-6.22.0.tgz";
      name = "babel-plugin-check-es2015-constants-6.22.0.tgz";
      sha1 = "35157b101426fd2ffd3da3f75c7d1e91835bbf8a";
    };
    deps = {
      "babel-runtime-6.22.0" = self.by-version."babel-runtime"."6.22.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-syntax-async-functions"."^6.8.0" =
    self.by-version."babel-plugin-syntax-async-functions"."6.13.0";
  by-version."babel-plugin-syntax-async-functions"."6.13.0" = self.buildNodePackage {
    name = "babel-plugin-syntax-async-functions-6.13.0";
    version = "6.13.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-syntax-async-functions/-/babel-plugin-syntax-async-functions-6.13.0.tgz";
      name = "babel-plugin-syntax-async-functions-6.13.0.tgz";
      sha1 = "cad9cad1191b5ad634bf30ae0872391e0647be95";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-syntax-exponentiation-operator"."^6.8.0" =
    self.by-version."babel-plugin-syntax-exponentiation-operator"."6.13.0";
  by-version."babel-plugin-syntax-exponentiation-operator"."6.13.0" = self.buildNodePackage {
    name = "babel-plugin-syntax-exponentiation-operator-6.13.0";
    version = "6.13.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-syntax-exponentiation-operator/-/babel-plugin-syntax-exponentiation-operator-6.13.0.tgz";
      name = "babel-plugin-syntax-exponentiation-operator-6.13.0.tgz";
      sha1 = "9ee7e8337290da95288201a6a57f4170317830de";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-syntax-flow"."^6.18.0" =
    self.by-version."babel-plugin-syntax-flow"."6.18.0";
  by-version."babel-plugin-syntax-flow"."6.18.0" = self.buildNodePackage {
    name = "babel-plugin-syntax-flow-6.18.0";
    version = "6.18.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-syntax-flow/-/babel-plugin-syntax-flow-6.18.0.tgz";
      name = "babel-plugin-syntax-flow-6.18.0.tgz";
      sha1 = "4c3ab20a2af26aa20cd25995c398c4eb70310c8d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-syntax-flow"."^6.3.13" =
    self.by-version."babel-plugin-syntax-flow"."6.18.0";
  by-spec."babel-plugin-syntax-jsx"."^6.3.13" =
    self.by-version."babel-plugin-syntax-jsx"."6.18.0";
  by-version."babel-plugin-syntax-jsx"."6.18.0" = self.buildNodePackage {
    name = "babel-plugin-syntax-jsx-6.18.0";
    version = "6.18.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-syntax-jsx/-/babel-plugin-syntax-jsx-6.18.0.tgz";
      name = "babel-plugin-syntax-jsx-6.18.0.tgz";
      sha1 = "0af32a9a6e13ca7a3fd5069e62d7b0f58d0d8946";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-syntax-jsx"."^6.8.0" =
    self.by-version."babel-plugin-syntax-jsx"."6.18.0";
  by-spec."babel-plugin-syntax-trailing-function-commas"."^6.22.0" =
    self.by-version."babel-plugin-syntax-trailing-function-commas"."6.22.0";
  by-version."babel-plugin-syntax-trailing-function-commas"."6.22.0" = self.buildNodePackage {
    name = "babel-plugin-syntax-trailing-function-commas-6.22.0";
    version = "6.22.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-syntax-trailing-function-commas/-/babel-plugin-syntax-trailing-function-commas-6.22.0.tgz";
      name = "babel-plugin-syntax-trailing-function-commas-6.22.0.tgz";
      sha1 = "ba0360937f8d06e40180a43fe0d5616fff532cf3";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-transform-async-to-generator"."^6.22.0" =
    self.by-version."babel-plugin-transform-async-to-generator"."6.22.0";
  by-version."babel-plugin-transform-async-to-generator"."6.22.0" = self.buildNodePackage {
    name = "babel-plugin-transform-async-to-generator-6.22.0";
    version = "6.22.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-transform-async-to-generator/-/babel-plugin-transform-async-to-generator-6.22.0.tgz";
      name = "babel-plugin-transform-async-to-generator-6.22.0.tgz";
      sha1 = "194b6938ec195ad36efc4c33a971acf00d8cd35e";
    };
    deps = {
      "babel-helper-remap-async-to-generator-6.22.0" = self.by-version."babel-helper-remap-async-to-generator"."6.22.0";
      "babel-plugin-syntax-async-functions-6.13.0" = self.by-version."babel-plugin-syntax-async-functions"."6.13.0";
      "babel-runtime-6.22.0" = self.by-version."babel-runtime"."6.22.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-transform-es2015-arrow-functions"."^6.22.0" =
    self.by-version."babel-plugin-transform-es2015-arrow-functions"."6.22.0";
  by-version."babel-plugin-transform-es2015-arrow-functions"."6.22.0" = self.buildNodePackage {
    name = "babel-plugin-transform-es2015-arrow-functions-6.22.0";
    version = "6.22.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-transform-es2015-arrow-functions/-/babel-plugin-transform-es2015-arrow-functions-6.22.0.tgz";
      name = "babel-plugin-transform-es2015-arrow-functions-6.22.0.tgz";
      sha1 = "452692cb711d5f79dc7f85e440ce41b9f244d221";
    };
    deps = {
      "babel-runtime-6.22.0" = self.by-version."babel-runtime"."6.22.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-transform-es2015-block-scoped-functions"."^6.22.0" =
    self.by-version."babel-plugin-transform-es2015-block-scoped-functions"."6.22.0";
  by-version."babel-plugin-transform-es2015-block-scoped-functions"."6.22.0" = self.buildNodePackage {
    name = "babel-plugin-transform-es2015-block-scoped-functions-6.22.0";
    version = "6.22.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-transform-es2015-block-scoped-functions/-/babel-plugin-transform-es2015-block-scoped-functions-6.22.0.tgz";
      name = "babel-plugin-transform-es2015-block-scoped-functions-6.22.0.tgz";
      sha1 = "bbc51b49f964d70cb8d8e0b94e820246ce3a6141";
    };
    deps = {
      "babel-runtime-6.22.0" = self.by-version."babel-runtime"."6.22.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-transform-es2015-block-scoping"."^6.22.0" =
    self.by-version."babel-plugin-transform-es2015-block-scoping"."6.22.0";
  by-version."babel-plugin-transform-es2015-block-scoping"."6.22.0" = self.buildNodePackage {
    name = "babel-plugin-transform-es2015-block-scoping-6.22.0";
    version = "6.22.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-transform-es2015-block-scoping/-/babel-plugin-transform-es2015-block-scoping-6.22.0.tgz";
      name = "babel-plugin-transform-es2015-block-scoping-6.22.0.tgz";
      sha1 = "00d6e3a0bebdcfe7536b9d653b44a9141e63e47e";
    };
    deps = {
      "babel-traverse-6.22.1" = self.by-version."babel-traverse"."6.22.1";
      "babel-types-6.22.0" = self.by-version."babel-types"."6.22.0";
      "babel-template-6.22.0" = self.by-version."babel-template"."6.22.0";
      "lodash-4.17.4" = self.by-version."lodash"."4.17.4";
      "babel-runtime-6.22.0" = self.by-version."babel-runtime"."6.22.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-transform-es2015-classes"."^6.22.0" =
    self.by-version."babel-plugin-transform-es2015-classes"."6.22.0";
  by-version."babel-plugin-transform-es2015-classes"."6.22.0" = self.buildNodePackage {
    name = "babel-plugin-transform-es2015-classes-6.22.0";
    version = "6.22.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-transform-es2015-classes/-/babel-plugin-transform-es2015-classes-6.22.0.tgz";
      name = "babel-plugin-transform-es2015-classes-6.22.0.tgz";
      sha1 = "54d44998fd823d9dca15292324161c331c1b6f14";
    };
    deps = {
      "babel-helper-optimise-call-expression-6.22.0" = self.by-version."babel-helper-optimise-call-expression"."6.22.0";
      "babel-helper-function-name-6.22.0" = self.by-version."babel-helper-function-name"."6.22.0";
      "babel-helper-replace-supers-6.22.0" = self.by-version."babel-helper-replace-supers"."6.22.0";
      "babel-template-6.22.0" = self.by-version."babel-template"."6.22.0";
      "babel-traverse-6.22.1" = self.by-version."babel-traverse"."6.22.1";
      "babel-helper-define-map-6.22.0" = self.by-version."babel-helper-define-map"."6.22.0";
      "babel-messages-6.22.0" = self.by-version."babel-messages"."6.22.0";
      "babel-runtime-6.22.0" = self.by-version."babel-runtime"."6.22.0";
      "babel-types-6.22.0" = self.by-version."babel-types"."6.22.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-transform-es2015-computed-properties"."^6.22.0" =
    self.by-version."babel-plugin-transform-es2015-computed-properties"."6.22.0";
  by-version."babel-plugin-transform-es2015-computed-properties"."6.22.0" = self.buildNodePackage {
    name = "babel-plugin-transform-es2015-computed-properties-6.22.0";
    version = "6.22.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-transform-es2015-computed-properties/-/babel-plugin-transform-es2015-computed-properties-6.22.0.tgz";
      name = "babel-plugin-transform-es2015-computed-properties-6.22.0.tgz";
      sha1 = "7c383e9629bba4820c11b0425bdd6290f7f057e7";
    };
    deps = {
      "babel-template-6.22.0" = self.by-version."babel-template"."6.22.0";
      "babel-runtime-6.22.0" = self.by-version."babel-runtime"."6.22.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-transform-es2015-destructuring"."^6.22.0" =
    self.by-version."babel-plugin-transform-es2015-destructuring"."6.22.0";
  by-version."babel-plugin-transform-es2015-destructuring"."6.22.0" = self.buildNodePackage {
    name = "babel-plugin-transform-es2015-destructuring-6.22.0";
    version = "6.22.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-transform-es2015-destructuring/-/babel-plugin-transform-es2015-destructuring-6.22.0.tgz";
      name = "babel-plugin-transform-es2015-destructuring-6.22.0.tgz";
      sha1 = "8e0af2f885a0b2cf999d47c4c1dd23ce88cfa4c6";
    };
    deps = {
      "babel-runtime-6.22.0" = self.by-version."babel-runtime"."6.22.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-transform-es2015-duplicate-keys"."^6.22.0" =
    self.by-version."babel-plugin-transform-es2015-duplicate-keys"."6.22.0";
  by-version."babel-plugin-transform-es2015-duplicate-keys"."6.22.0" = self.buildNodePackage {
    name = "babel-plugin-transform-es2015-duplicate-keys-6.22.0";
    version = "6.22.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-transform-es2015-duplicate-keys/-/babel-plugin-transform-es2015-duplicate-keys-6.22.0.tgz";
      name = "babel-plugin-transform-es2015-duplicate-keys-6.22.0.tgz";
      sha1 = "672397031c21610d72dd2bbb0ba9fb6277e1c36b";
    };
    deps = {
      "babel-runtime-6.22.0" = self.by-version."babel-runtime"."6.22.0";
      "babel-types-6.22.0" = self.by-version."babel-types"."6.22.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-transform-es2015-for-of"."^6.22.0" =
    self.by-version."babel-plugin-transform-es2015-for-of"."6.22.0";
  by-version."babel-plugin-transform-es2015-for-of"."6.22.0" = self.buildNodePackage {
    name = "babel-plugin-transform-es2015-for-of-6.22.0";
    version = "6.22.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-transform-es2015-for-of/-/babel-plugin-transform-es2015-for-of-6.22.0.tgz";
      name = "babel-plugin-transform-es2015-for-of-6.22.0.tgz";
      sha1 = "180467ad63aeea592a1caeee4bf1c8b3e2616265";
    };
    deps = {
      "babel-runtime-6.22.0" = self.by-version."babel-runtime"."6.22.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-transform-es2015-function-name"."^6.22.0" =
    self.by-version."babel-plugin-transform-es2015-function-name"."6.22.0";
  by-version."babel-plugin-transform-es2015-function-name"."6.22.0" = self.buildNodePackage {
    name = "babel-plugin-transform-es2015-function-name-6.22.0";
    version = "6.22.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-transform-es2015-function-name/-/babel-plugin-transform-es2015-function-name-6.22.0.tgz";
      name = "babel-plugin-transform-es2015-function-name-6.22.0.tgz";
      sha1 = "f5fcc8b09093f9a23c76ac3d9e392c3ec4b77104";
    };
    deps = {
      "babel-helper-function-name-6.22.0" = self.by-version."babel-helper-function-name"."6.22.0";
      "babel-types-6.22.0" = self.by-version."babel-types"."6.22.0";
      "babel-runtime-6.22.0" = self.by-version."babel-runtime"."6.22.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-transform-es2015-literals"."^6.22.0" =
    self.by-version."babel-plugin-transform-es2015-literals"."6.22.0";
  by-version."babel-plugin-transform-es2015-literals"."6.22.0" = self.buildNodePackage {
    name = "babel-plugin-transform-es2015-literals-6.22.0";
    version = "6.22.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-transform-es2015-literals/-/babel-plugin-transform-es2015-literals-6.22.0.tgz";
      name = "babel-plugin-transform-es2015-literals-6.22.0.tgz";
      sha1 = "4f54a02d6cd66cf915280019a31d31925377ca2e";
    };
    deps = {
      "babel-runtime-6.22.0" = self.by-version."babel-runtime"."6.22.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-transform-es2015-modules-amd"."^6.22.0" =
    self.by-version."babel-plugin-transform-es2015-modules-amd"."6.22.0";
  by-version."babel-plugin-transform-es2015-modules-amd"."6.22.0" = self.buildNodePackage {
    name = "babel-plugin-transform-es2015-modules-amd-6.22.0";
    version = "6.22.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-transform-es2015-modules-amd/-/babel-plugin-transform-es2015-modules-amd-6.22.0.tgz";
      name = "babel-plugin-transform-es2015-modules-amd-6.22.0.tgz";
      sha1 = "bf69cd34889a41c33d90dfb740e0091ccff52f21";
    };
    deps = {
      "babel-plugin-transform-es2015-modules-commonjs-6.22.0" = self.by-version."babel-plugin-transform-es2015-modules-commonjs"."6.22.0";
      "babel-template-6.22.0" = self.by-version."babel-template"."6.22.0";
      "babel-runtime-6.22.0" = self.by-version."babel-runtime"."6.22.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-transform-es2015-modules-commonjs"."^6.22.0" =
    self.by-version."babel-plugin-transform-es2015-modules-commonjs"."6.22.0";
  by-version."babel-plugin-transform-es2015-modules-commonjs"."6.22.0" = self.buildNodePackage {
    name = "babel-plugin-transform-es2015-modules-commonjs-6.22.0";
    version = "6.22.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-transform-es2015-modules-commonjs/-/babel-plugin-transform-es2015-modules-commonjs-6.22.0.tgz";
      name = "babel-plugin-transform-es2015-modules-commonjs-6.22.0.tgz";
      sha1 = "6ca04e22b8e214fb50169730657e7a07dc941145";
    };
    deps = {
      "babel-types-6.22.0" = self.by-version."babel-types"."6.22.0";
      "babel-runtime-6.22.0" = self.by-version."babel-runtime"."6.22.0";
      "babel-template-6.22.0" = self.by-version."babel-template"."6.22.0";
      "babel-plugin-transform-strict-mode-6.22.0" = self.by-version."babel-plugin-transform-strict-mode"."6.22.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-transform-es2015-modules-systemjs"."^6.22.0" =
    self.by-version."babel-plugin-transform-es2015-modules-systemjs"."6.22.0";
  by-version."babel-plugin-transform-es2015-modules-systemjs"."6.22.0" = self.buildNodePackage {
    name = "babel-plugin-transform-es2015-modules-systemjs-6.22.0";
    version = "6.22.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-transform-es2015-modules-systemjs/-/babel-plugin-transform-es2015-modules-systemjs-6.22.0.tgz";
      name = "babel-plugin-transform-es2015-modules-systemjs-6.22.0.tgz";
      sha1 = "810cd0cd025a08383b84236b92c6e31f88e644ad";
    };
    deps = {
      "babel-template-6.22.0" = self.by-version."babel-template"."6.22.0";
      "babel-helper-hoist-variables-6.22.0" = self.by-version."babel-helper-hoist-variables"."6.22.0";
      "babel-runtime-6.22.0" = self.by-version."babel-runtime"."6.22.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-transform-es2015-modules-umd"."^6.22.0" =
    self.by-version."babel-plugin-transform-es2015-modules-umd"."6.22.0";
  by-version."babel-plugin-transform-es2015-modules-umd"."6.22.0" = self.buildNodePackage {
    name = "babel-plugin-transform-es2015-modules-umd-6.22.0";
    version = "6.22.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-transform-es2015-modules-umd/-/babel-plugin-transform-es2015-modules-umd-6.22.0.tgz";
      name = "babel-plugin-transform-es2015-modules-umd-6.22.0.tgz";
      sha1 = "60d0ba3bd23258719c64391d9bf492d648dc0fae";
    };
    deps = {
      "babel-plugin-transform-es2015-modules-amd-6.22.0" = self.by-version."babel-plugin-transform-es2015-modules-amd"."6.22.0";
      "babel-template-6.22.0" = self.by-version."babel-template"."6.22.0";
      "babel-runtime-6.22.0" = self.by-version."babel-runtime"."6.22.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-transform-es2015-object-super"."^6.22.0" =
    self.by-version."babel-plugin-transform-es2015-object-super"."6.22.0";
  by-version."babel-plugin-transform-es2015-object-super"."6.22.0" = self.buildNodePackage {
    name = "babel-plugin-transform-es2015-object-super-6.22.0";
    version = "6.22.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-transform-es2015-object-super/-/babel-plugin-transform-es2015-object-super-6.22.0.tgz";
      name = "babel-plugin-transform-es2015-object-super-6.22.0.tgz";
      sha1 = "daa60e114a042ea769dd53fe528fc82311eb98fc";
    };
    deps = {
      "babel-helper-replace-supers-6.22.0" = self.by-version."babel-helper-replace-supers"."6.22.0";
      "babel-runtime-6.22.0" = self.by-version."babel-runtime"."6.22.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-transform-es2015-parameters"."^6.22.0" =
    self.by-version."babel-plugin-transform-es2015-parameters"."6.22.0";
  by-version."babel-plugin-transform-es2015-parameters"."6.22.0" = self.buildNodePackage {
    name = "babel-plugin-transform-es2015-parameters-6.22.0";
    version = "6.22.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-transform-es2015-parameters/-/babel-plugin-transform-es2015-parameters-6.22.0.tgz";
      name = "babel-plugin-transform-es2015-parameters-6.22.0.tgz";
      sha1 = "57076069232019094f27da8c68bb7162fe208dbb";
    };
    deps = {
      "babel-traverse-6.22.1" = self.by-version."babel-traverse"."6.22.1";
      "babel-helper-call-delegate-6.22.0" = self.by-version."babel-helper-call-delegate"."6.22.0";
      "babel-helper-get-function-arity-6.22.0" = self.by-version."babel-helper-get-function-arity"."6.22.0";
      "babel-template-6.22.0" = self.by-version."babel-template"."6.22.0";
      "babel-types-6.22.0" = self.by-version."babel-types"."6.22.0";
      "babel-runtime-6.22.0" = self.by-version."babel-runtime"."6.22.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-transform-es2015-shorthand-properties"."^6.22.0" =
    self.by-version."babel-plugin-transform-es2015-shorthand-properties"."6.22.0";
  by-version."babel-plugin-transform-es2015-shorthand-properties"."6.22.0" = self.buildNodePackage {
    name = "babel-plugin-transform-es2015-shorthand-properties-6.22.0";
    version = "6.22.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-transform-es2015-shorthand-properties/-/babel-plugin-transform-es2015-shorthand-properties-6.22.0.tgz";
      name = "babel-plugin-transform-es2015-shorthand-properties-6.22.0.tgz";
      sha1 = "8ba776e0affaa60bff21e921403b8a652a2ff723";
    };
    deps = {
      "babel-types-6.22.0" = self.by-version."babel-types"."6.22.0";
      "babel-runtime-6.22.0" = self.by-version."babel-runtime"."6.22.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-transform-es2015-spread"."^6.22.0" =
    self.by-version."babel-plugin-transform-es2015-spread"."6.22.0";
  by-version."babel-plugin-transform-es2015-spread"."6.22.0" = self.buildNodePackage {
    name = "babel-plugin-transform-es2015-spread-6.22.0";
    version = "6.22.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-transform-es2015-spread/-/babel-plugin-transform-es2015-spread-6.22.0.tgz";
      name = "babel-plugin-transform-es2015-spread-6.22.0.tgz";
      sha1 = "d6d68a99f89aedc4536c81a542e8dd9f1746f8d1";
    };
    deps = {
      "babel-runtime-6.22.0" = self.by-version."babel-runtime"."6.22.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-transform-es2015-sticky-regex"."^6.22.0" =
    self.by-version."babel-plugin-transform-es2015-sticky-regex"."6.22.0";
  by-version."babel-plugin-transform-es2015-sticky-regex"."6.22.0" = self.buildNodePackage {
    name = "babel-plugin-transform-es2015-sticky-regex-6.22.0";
    version = "6.22.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-transform-es2015-sticky-regex/-/babel-plugin-transform-es2015-sticky-regex-6.22.0.tgz";
      name = "babel-plugin-transform-es2015-sticky-regex-6.22.0.tgz";
      sha1 = "ab316829e866ee3f4b9eb96939757d19a5bc4593";
    };
    deps = {
      "babel-helper-regex-6.22.0" = self.by-version."babel-helper-regex"."6.22.0";
      "babel-types-6.22.0" = self.by-version."babel-types"."6.22.0";
      "babel-runtime-6.22.0" = self.by-version."babel-runtime"."6.22.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-transform-es2015-template-literals"."^6.22.0" =
    self.by-version."babel-plugin-transform-es2015-template-literals"."6.22.0";
  by-version."babel-plugin-transform-es2015-template-literals"."6.22.0" = self.buildNodePackage {
    name = "babel-plugin-transform-es2015-template-literals-6.22.0";
    version = "6.22.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-transform-es2015-template-literals/-/babel-plugin-transform-es2015-template-literals-6.22.0.tgz";
      name = "babel-plugin-transform-es2015-template-literals-6.22.0.tgz";
      sha1 = "a84b3450f7e9f8f1f6839d6d687da84bb1236d8d";
    };
    deps = {
      "babel-runtime-6.22.0" = self.by-version."babel-runtime"."6.22.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-transform-es2015-typeof-symbol"."^6.22.0" =
    self.by-version."babel-plugin-transform-es2015-typeof-symbol"."6.22.0";
  by-version."babel-plugin-transform-es2015-typeof-symbol"."6.22.0" = self.buildNodePackage {
    name = "babel-plugin-transform-es2015-typeof-symbol-6.22.0";
    version = "6.22.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-transform-es2015-typeof-symbol/-/babel-plugin-transform-es2015-typeof-symbol-6.22.0.tgz";
      name = "babel-plugin-transform-es2015-typeof-symbol-6.22.0.tgz";
      sha1 = "87faf2336d3b6a97f68c4d906b0cd0edeae676e1";
    };
    deps = {
      "babel-runtime-6.22.0" = self.by-version."babel-runtime"."6.22.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-transform-es2015-unicode-regex"."^6.22.0" =
    self.by-version."babel-plugin-transform-es2015-unicode-regex"."6.22.0";
  by-version."babel-plugin-transform-es2015-unicode-regex"."6.22.0" = self.buildNodePackage {
    name = "babel-plugin-transform-es2015-unicode-regex-6.22.0";
    version = "6.22.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-transform-es2015-unicode-regex/-/babel-plugin-transform-es2015-unicode-regex-6.22.0.tgz";
      name = "babel-plugin-transform-es2015-unicode-regex-6.22.0.tgz";
      sha1 = "8d9cc27e7ee1decfe65454fb986452a04a613d20";
    };
    deps = {
      "babel-helper-regex-6.22.0" = self.by-version."babel-helper-regex"."6.22.0";
      "babel-runtime-6.22.0" = self.by-version."babel-runtime"."6.22.0";
      "regexpu-core-2.0.0" = self.by-version."regexpu-core"."2.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-transform-exponentiation-operator"."^6.22.0" =
    self.by-version."babel-plugin-transform-exponentiation-operator"."6.22.0";
  by-version."babel-plugin-transform-exponentiation-operator"."6.22.0" = self.buildNodePackage {
    name = "babel-plugin-transform-exponentiation-operator-6.22.0";
    version = "6.22.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-transform-exponentiation-operator/-/babel-plugin-transform-exponentiation-operator-6.22.0.tgz";
      name = "babel-plugin-transform-exponentiation-operator-6.22.0.tgz";
      sha1 = "d57c8335281918e54ef053118ce6eb108468084d";
    };
    deps = {
      "babel-plugin-syntax-exponentiation-operator-6.13.0" = self.by-version."babel-plugin-syntax-exponentiation-operator"."6.13.0";
      "babel-helper-builder-binary-assignment-operator-visitor-6.22.0" = self.by-version."babel-helper-builder-binary-assignment-operator-visitor"."6.22.0";
      "babel-runtime-6.22.0" = self.by-version."babel-runtime"."6.22.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-transform-flow-strip-types"."^6.22.0" =
    self.by-version."babel-plugin-transform-flow-strip-types"."6.22.0";
  by-version."babel-plugin-transform-flow-strip-types"."6.22.0" = self.buildNodePackage {
    name = "babel-plugin-transform-flow-strip-types-6.22.0";
    version = "6.22.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-transform-flow-strip-types/-/babel-plugin-transform-flow-strip-types-6.22.0.tgz";
      name = "babel-plugin-transform-flow-strip-types-6.22.0.tgz";
      sha1 = "84cb672935d43714fdc32bce84568d87441cf7cf";
    };
    deps = {
      "babel-runtime-6.22.0" = self.by-version."babel-runtime"."6.22.0";
      "babel-plugin-syntax-flow-6.18.0" = self.by-version."babel-plugin-syntax-flow"."6.18.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-transform-react-display-name"."^6.22.0" =
    self.by-version."babel-plugin-transform-react-display-name"."6.22.0";
  by-version."babel-plugin-transform-react-display-name"."6.22.0" = self.buildNodePackage {
    name = "babel-plugin-transform-react-display-name-6.22.0";
    version = "6.22.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-transform-react-display-name/-/babel-plugin-transform-react-display-name-6.22.0.tgz";
      name = "babel-plugin-transform-react-display-name-6.22.0.tgz";
      sha1 = "077197520fa8562b8d3da4c3c4b0b1bdd7853f26";
    };
    deps = {
      "babel-runtime-6.22.0" = self.by-version."babel-runtime"."6.22.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-transform-react-jsx"."^6.22.0" =
    self.by-version."babel-plugin-transform-react-jsx"."6.22.0";
  by-version."babel-plugin-transform-react-jsx"."6.22.0" = self.buildNodePackage {
    name = "babel-plugin-transform-react-jsx-6.22.0";
    version = "6.22.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-transform-react-jsx/-/babel-plugin-transform-react-jsx-6.22.0.tgz";
      name = "babel-plugin-transform-react-jsx-6.22.0.tgz";
      sha1 = "48556b7dd4c3fe97d1c943bcd54fc3f2561c1817";
    };
    deps = {
      "babel-runtime-6.22.0" = self.by-version."babel-runtime"."6.22.0";
      "babel-helper-builder-react-jsx-6.22.0" = self.by-version."babel-helper-builder-react-jsx"."6.22.0";
      "babel-plugin-syntax-jsx-6.18.0" = self.by-version."babel-plugin-syntax-jsx"."6.18.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-transform-react-jsx-self"."^6.22.0" =
    self.by-version."babel-plugin-transform-react-jsx-self"."6.22.0";
  by-version."babel-plugin-transform-react-jsx-self"."6.22.0" = self.buildNodePackage {
    name = "babel-plugin-transform-react-jsx-self-6.22.0";
    version = "6.22.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-transform-react-jsx-self/-/babel-plugin-transform-react-jsx-self-6.22.0.tgz";
      name = "babel-plugin-transform-react-jsx-self-6.22.0.tgz";
      sha1 = "df6d80a9da2612a121e6ddd7558bcbecf06e636e";
    };
    deps = {
      "babel-runtime-6.22.0" = self.by-version."babel-runtime"."6.22.0";
      "babel-plugin-syntax-jsx-6.18.0" = self.by-version."babel-plugin-syntax-jsx"."6.18.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-transform-react-jsx-source"."^6.22.0" =
    self.by-version."babel-plugin-transform-react-jsx-source"."6.22.0";
  by-version."babel-plugin-transform-react-jsx-source"."6.22.0" = self.buildNodePackage {
    name = "babel-plugin-transform-react-jsx-source-6.22.0";
    version = "6.22.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-transform-react-jsx-source/-/babel-plugin-transform-react-jsx-source-6.22.0.tgz";
      name = "babel-plugin-transform-react-jsx-source-6.22.0.tgz";
      sha1 = "66ac12153f5cd2d17b3c19268f4bf0197f44ecd6";
    };
    deps = {
      "babel-runtime-6.22.0" = self.by-version."babel-runtime"."6.22.0";
      "babel-plugin-syntax-jsx-6.18.0" = self.by-version."babel-plugin-syntax-jsx"."6.18.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-transform-regenerator"."^6.22.0" =
    self.by-version."babel-plugin-transform-regenerator"."6.22.0";
  by-version."babel-plugin-transform-regenerator"."6.22.0" = self.buildNodePackage {
    name = "babel-plugin-transform-regenerator-6.22.0";
    version = "6.22.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-transform-regenerator/-/babel-plugin-transform-regenerator-6.22.0.tgz";
      name = "babel-plugin-transform-regenerator-6.22.0.tgz";
      sha1 = "65740593a319c44522157538d690b84094617ea6";
    };
    deps = {
      "regenerator-transform-0.9.8" = self.by-version."regenerator-transform"."0.9.8";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-plugin-transform-strict-mode"."^6.22.0" =
    self.by-version."babel-plugin-transform-strict-mode"."6.22.0";
  by-version."babel-plugin-transform-strict-mode"."6.22.0" = self.buildNodePackage {
    name = "babel-plugin-transform-strict-mode-6.22.0";
    version = "6.22.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-plugin-transform-strict-mode/-/babel-plugin-transform-strict-mode-6.22.0.tgz";
      name = "babel-plugin-transform-strict-mode-6.22.0.tgz";
      sha1 = "e008df01340fdc87e959da65991b7e05970c8c7c";
    };
    deps = {
      "babel-runtime-6.22.0" = self.by-version."babel-runtime"."6.22.0";
      "babel-types-6.22.0" = self.by-version."babel-types"."6.22.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-polyfill"."^6.22.0" =
    self.by-version."babel-polyfill"."6.22.0";
  by-version."babel-polyfill"."6.22.0" = self.buildNodePackage {
    name = "babel-polyfill-6.22.0";
    version = "6.22.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-polyfill/-/babel-polyfill-6.22.0.tgz";
      name = "babel-polyfill-6.22.0.tgz";
      sha1 = "1ac99ebdcc6ba4db1e2618c387b2084a82154a3b";
    };
    deps = {
      "core-js-2.4.1" = self.by-version."core-js"."2.4.1";
      "babel-runtime-6.22.0" = self.by-version."babel-runtime"."6.22.0";
      "regenerator-runtime-0.10.1" = self.by-version."regenerator-runtime"."0.10.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-preset-es2015"."^6.22.0" =
    self.by-version."babel-preset-es2015"."6.22.0";
  by-version."babel-preset-es2015"."6.22.0" = self.buildNodePackage {
    name = "babel-preset-es2015-6.22.0";
    version = "6.22.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-preset-es2015/-/babel-preset-es2015-6.22.0.tgz";
      name = "babel-preset-es2015-6.22.0.tgz";
      sha1 = "af5a98ecb35eb8af764ad8a5a05eb36dc4386835";
    };
    deps = {
      "babel-plugin-check-es2015-constants-6.22.0" = self.by-version."babel-plugin-check-es2015-constants"."6.22.0";
      "babel-plugin-transform-es2015-arrow-functions-6.22.0" = self.by-version."babel-plugin-transform-es2015-arrow-functions"."6.22.0";
      "babel-plugin-transform-es2015-block-scoped-functions-6.22.0" = self.by-version."babel-plugin-transform-es2015-block-scoped-functions"."6.22.0";
      "babel-plugin-transform-es2015-block-scoping-6.22.0" = self.by-version."babel-plugin-transform-es2015-block-scoping"."6.22.0";
      "babel-plugin-transform-es2015-classes-6.22.0" = self.by-version."babel-plugin-transform-es2015-classes"."6.22.0";
      "babel-plugin-transform-es2015-computed-properties-6.22.0" = self.by-version."babel-plugin-transform-es2015-computed-properties"."6.22.0";
      "babel-plugin-transform-es2015-destructuring-6.22.0" = self.by-version."babel-plugin-transform-es2015-destructuring"."6.22.0";
      "babel-plugin-transform-es2015-duplicate-keys-6.22.0" = self.by-version."babel-plugin-transform-es2015-duplicate-keys"."6.22.0";
      "babel-plugin-transform-es2015-for-of-6.22.0" = self.by-version."babel-plugin-transform-es2015-for-of"."6.22.0";
      "babel-plugin-transform-es2015-function-name-6.22.0" = self.by-version."babel-plugin-transform-es2015-function-name"."6.22.0";
      "babel-plugin-transform-es2015-literals-6.22.0" = self.by-version."babel-plugin-transform-es2015-literals"."6.22.0";
      "babel-plugin-transform-es2015-modules-amd-6.22.0" = self.by-version."babel-plugin-transform-es2015-modules-amd"."6.22.0";
      "babel-plugin-transform-es2015-modules-commonjs-6.22.0" = self.by-version."babel-plugin-transform-es2015-modules-commonjs"."6.22.0";
      "babel-plugin-transform-es2015-modules-systemjs-6.22.0" = self.by-version."babel-plugin-transform-es2015-modules-systemjs"."6.22.0";
      "babel-plugin-transform-es2015-modules-umd-6.22.0" = self.by-version."babel-plugin-transform-es2015-modules-umd"."6.22.0";
      "babel-plugin-transform-es2015-object-super-6.22.0" = self.by-version."babel-plugin-transform-es2015-object-super"."6.22.0";
      "babel-plugin-transform-es2015-parameters-6.22.0" = self.by-version."babel-plugin-transform-es2015-parameters"."6.22.0";
      "babel-plugin-transform-es2015-shorthand-properties-6.22.0" = self.by-version."babel-plugin-transform-es2015-shorthand-properties"."6.22.0";
      "babel-plugin-transform-es2015-spread-6.22.0" = self.by-version."babel-plugin-transform-es2015-spread"."6.22.0";
      "babel-plugin-transform-es2015-sticky-regex-6.22.0" = self.by-version."babel-plugin-transform-es2015-sticky-regex"."6.22.0";
      "babel-plugin-transform-es2015-template-literals-6.22.0" = self.by-version."babel-plugin-transform-es2015-template-literals"."6.22.0";
      "babel-plugin-transform-es2015-typeof-symbol-6.22.0" = self.by-version."babel-plugin-transform-es2015-typeof-symbol"."6.22.0";
      "babel-plugin-transform-es2015-unicode-regex-6.22.0" = self.by-version."babel-plugin-transform-es2015-unicode-regex"."6.22.0";
      "babel-plugin-transform-regenerator-6.22.0" = self.by-version."babel-plugin-transform-regenerator"."6.22.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-preset-es2016"."^6.22.0" =
    self.by-version."babel-preset-es2016"."6.22.0";
  by-version."babel-preset-es2016"."6.22.0" = self.buildNodePackage {
    name = "babel-preset-es2016-6.22.0";
    version = "6.22.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-preset-es2016/-/babel-preset-es2016-6.22.0.tgz";
      name = "babel-preset-es2016-6.22.0.tgz";
      sha1 = "b061aaa3983d40c9fbacfa3743b5df37f336156c";
    };
    deps = {
      "babel-plugin-transform-exponentiation-operator-6.22.0" = self.by-version."babel-plugin-transform-exponentiation-operator"."6.22.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-preset-es2017"."^6.22.0" =
    self.by-version."babel-preset-es2017"."6.22.0";
  by-version."babel-preset-es2017"."6.22.0" = self.buildNodePackage {
    name = "babel-preset-es2017-6.22.0";
    version = "6.22.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-preset-es2017/-/babel-preset-es2017-6.22.0.tgz";
      name = "babel-preset-es2017-6.22.0.tgz";
      sha1 = "de2f9da5a30c50d293fb54a0ba15d6ddc573f0f2";
    };
    deps = {
      "babel-plugin-syntax-trailing-function-commas-6.22.0" = self.by-version."babel-plugin-syntax-trailing-function-commas"."6.22.0";
      "babel-plugin-transform-async-to-generator-6.22.0" = self.by-version."babel-plugin-transform-async-to-generator"."6.22.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-preset-latest"."*" =
    self.by-version."babel-preset-latest"."6.22.0";
  by-version."babel-preset-latest"."6.22.0" = self.buildNodePackage {
    name = "babel-preset-latest-6.22.0";
    version = "6.22.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-preset-latest/-/babel-preset-latest-6.22.0.tgz";
      name = "babel-preset-latest-6.22.0.tgz";
      sha1 = "47b800531350a3dc69126e8c375a40655cd1eeff";
    };
    deps = {
      "babel-preset-es2015-6.22.0" = self.by-version."babel-preset-es2015"."6.22.0";
      "babel-preset-es2016-6.22.0" = self.by-version."babel-preset-es2016"."6.22.0";
      "babel-preset-es2017-6.22.0" = self.by-version."babel-preset-es2017"."6.22.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "babel-preset-latest" = self.by-version."babel-preset-latest"."6.22.0";
  by-spec."babel-preset-react"."*" =
    self.by-version."babel-preset-react"."6.22.0";
  by-version."babel-preset-react"."6.22.0" = self.buildNodePackage {
    name = "babel-preset-react-6.22.0";
    version = "6.22.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-preset-react/-/babel-preset-react-6.22.0.tgz";
      name = "babel-preset-react-6.22.0.tgz";
      sha1 = "7bc97e2d73eec4b980fb6b4e4e0884e81ccdc165";
    };
    deps = {
      "babel-plugin-syntax-flow-6.18.0" = self.by-version."babel-plugin-syntax-flow"."6.18.0";
      "babel-plugin-syntax-jsx-6.18.0" = self.by-version."babel-plugin-syntax-jsx"."6.18.0";
      "babel-plugin-transform-flow-strip-types-6.22.0" = self.by-version."babel-plugin-transform-flow-strip-types"."6.22.0";
      "babel-plugin-transform-react-display-name-6.22.0" = self.by-version."babel-plugin-transform-react-display-name"."6.22.0";
      "babel-plugin-transform-react-jsx-6.22.0" = self.by-version."babel-plugin-transform-react-jsx"."6.22.0";
      "babel-plugin-transform-react-jsx-source-6.22.0" = self.by-version."babel-plugin-transform-react-jsx-source"."6.22.0";
      "babel-plugin-transform-react-jsx-self-6.22.0" = self.by-version."babel-plugin-transform-react-jsx-self"."6.22.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  "babel-preset-react" = self.by-version."babel-preset-react"."6.22.0";
  by-spec."babel-register"."^6.22.0" =
    self.by-version."babel-register"."6.22.0";
  by-version."babel-register"."6.22.0" = self.buildNodePackage {
    name = "babel-register-6.22.0";
    version = "6.22.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-register/-/babel-register-6.22.0.tgz";
      name = "babel-register-6.22.0.tgz";
      sha1 = "a61dd83975f9ca4a9e7d6eff3059494cd5ea4c63";
    };
    deps = {
      "babel-core-6.22.1" = self.by-version."babel-core"."6.22.1";
      "babel-runtime-6.22.0" = self.by-version."babel-runtime"."6.22.0";
      "core-js-2.4.1" = self.by-version."core-js"."2.4.1";
      "home-or-tmp-2.0.0" = self.by-version."home-or-tmp"."2.0.0";
      "lodash-4.17.4" = self.by-version."lodash"."4.17.4";
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "source-map-support-0.4.11" = self.by-version."source-map-support"."0.4.11";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-runtime"."^6.18.0" =
    self.by-version."babel-runtime"."6.22.0";
  by-version."babel-runtime"."6.22.0" = self.buildNodePackage {
    name = "babel-runtime-6.22.0";
    version = "6.22.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-runtime/-/babel-runtime-6.22.0.tgz";
      name = "babel-runtime-6.22.0.tgz";
      sha1 = "1cf8b4ac67c77a4ddb0db2ae1f74de52ac4ca611";
    };
    deps = {
      "core-js-2.4.1" = self.by-version."core-js"."2.4.1";
      "regenerator-runtime-0.10.1" = self.by-version."regenerator-runtime"."0.10.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-runtime"."^6.22.0" =
    self.by-version."babel-runtime"."6.22.0";
  by-spec."babel-template"."^6.22.0" =
    self.by-version."babel-template"."6.22.0";
  by-version."babel-template"."6.22.0" = self.buildNodePackage {
    name = "babel-template-6.22.0";
    version = "6.22.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-template/-/babel-template-6.22.0.tgz";
      name = "babel-template-6.22.0.tgz";
      sha1 = "403d110905a4626b317a2a1fcb8f3b73204b2edb";
    };
    deps = {
      "babylon-6.15.0" = self.by-version."babylon"."6.15.0";
      "babel-traverse-6.22.1" = self.by-version."babel-traverse"."6.22.1";
      "babel-types-6.22.0" = self.by-version."babel-types"."6.22.0";
      "babel-runtime-6.22.0" = self.by-version."babel-runtime"."6.22.0";
      "lodash-4.17.4" = self.by-version."lodash"."4.17.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-traverse"."^6.22.0" =
    self.by-version."babel-traverse"."6.22.1";
  by-version."babel-traverse"."6.22.1" = self.buildNodePackage {
    name = "babel-traverse-6.22.1";
    version = "6.22.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-traverse/-/babel-traverse-6.22.1.tgz";
      name = "babel-traverse-6.22.1.tgz";
      sha1 = "3b95cd6b7427d6f1f757704908f2fc9748a5f59f";
    };
    deps = {
      "babel-code-frame-6.22.0" = self.by-version."babel-code-frame"."6.22.0";
      "babel-messages-6.22.0" = self.by-version."babel-messages"."6.22.0";
      "babel-runtime-6.22.0" = self.by-version."babel-runtime"."6.22.0";
      "babel-types-6.22.0" = self.by-version."babel-types"."6.22.0";
      "babylon-6.15.0" = self.by-version."babylon"."6.15.0";
      "debug-2.6.1" = self.by-version."debug"."2.6.1";
      "globals-9.14.0" = self.by-version."globals"."9.14.0";
      "invariant-2.2.2" = self.by-version."invariant"."2.2.2";
      "lodash-4.17.4" = self.by-version."lodash"."4.17.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-traverse"."^6.22.1" =
    self.by-version."babel-traverse"."6.22.1";
  by-spec."babel-types"."^6.19.0" =
    self.by-version."babel-types"."6.22.0";
  by-version."babel-types"."6.22.0" = self.buildNodePackage {
    name = "babel-types-6.22.0";
    version = "6.22.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/babel-types/-/babel-types-6.22.0.tgz";
      name = "babel-types-6.22.0.tgz";
      sha1 = "2a447e8d0ea25d2512409e4175479fd78cc8b1db";
    };
    deps = {
      "babel-runtime-6.22.0" = self.by-version."babel-runtime"."6.22.0";
      "esutils-2.0.2" = self.by-version."esutils"."2.0.2";
      "lodash-4.17.4" = self.by-version."lodash"."4.17.4";
      "to-fast-properties-1.0.2" = self.by-version."to-fast-properties"."1.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babel-types"."^6.22.0" =
    self.by-version."babel-types"."6.22.0";
  by-spec."babylon"."^6.11.0" =
    self.by-version."babylon"."6.15.0";
  by-version."babylon"."6.15.0" = self.buildNodePackage {
    name = "babylon-6.15.0";
    version = "6.15.0";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/babylon/-/babylon-6.15.0.tgz";
      name = "babylon-6.15.0.tgz";
      sha1 = "ba65cfa1a80e1759b0e89fb562e27dccae70348e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."babylon"."^6.15.0" =
    self.by-version."babylon"."6.15.0";
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
  by-spec."binary-extensions"."^1.0.0" =
    self.by-version."binary-extensions"."1.8.0";
  by-version."binary-extensions"."1.8.0" = self.buildNodePackage {
    name = "binary-extensions-1.8.0";
    version = "1.8.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/binary-extensions/-/binary-extensions-1.8.0.tgz";
      name = "binary-extensions-1.8.0.tgz";
      sha1 = "48ec8d16df4377eae5fa5884682480af4d95c774";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."block-stream"."*" =
    self.by-version."block-stream"."0.0.9";
  by-version."block-stream"."0.0.9" = self.buildNodePackage {
    name = "block-stream-0.0.9";
    version = "0.0.9";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/block-stream/-/block-stream-0.0.9.tgz";
      name = "block-stream-0.0.9.tgz";
      sha1 = "13ebfe778a03205cfe03751481ebb4b3300c126a";
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
    self.by-version."brace-expansion"."1.1.6";
  by-version."brace-expansion"."1.1.6" = self.buildNodePackage {
    name = "brace-expansion-1.1.6";
    version = "1.1.6";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/brace-expansion/-/brace-expansion-1.1.6.tgz";
      name = "brace-expansion-1.1.6.tgz";
      sha1 = "7197d7eaa9b87e648390ea61fc66c84427420df9";
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
  by-spec."braces"."^1.8.2" =
    self.by-version."braces"."1.8.5";
  by-version."braces"."1.8.5" = self.buildNodePackage {
    name = "braces-1.8.5";
    version = "1.8.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/braces/-/braces-1.8.5.tgz";
      name = "braces-1.8.5.tgz";
      sha1 = "ba77962e12dff969d6b76711e914b737857bf6a7";
    };
    deps = {
      "expand-range-1.8.2" = self.by-version."expand-range"."1.8.2";
      "preserve-0.2.0" = self.by-version."preserve"."0.2.0";
      "repeat-element-1.1.2" = self.by-version."repeat-element"."1.1.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."buffer-shims"."^1.0.0" =
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
  by-spec."caseless"."~0.11.0" =
    self.by-version."caseless"."0.11.0";
  by-version."caseless"."0.11.0" = self.buildNodePackage {
    name = "caseless-0.11.0";
    version = "0.11.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/caseless/-/caseless-0.11.0.tgz";
      name = "caseless-0.11.0.tgz";
      sha1 = "715b96ea9841593cc33067923f5ec60ebda4f7d7";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."chalk"."^1.1.0" =
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
  by-spec."chalk"."^1.1.1" =
    self.by-version."chalk"."1.1.3";
  by-spec."chokidar"."^1.6.1" =
    self.by-version."chokidar"."1.6.1";
  by-version."chokidar"."1.6.1" = self.buildNodePackage {
    name = "chokidar-1.6.1";
    version = "1.6.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/chokidar/-/chokidar-1.6.1.tgz";
      name = "chokidar-1.6.1.tgz";
      sha1 = "2f4447ab5e96e50fb3d789fd90d4c72e0e4c70c2";
    };
    deps = {
      "anymatch-1.3.0" = self.by-version."anymatch"."1.3.0";
      "async-each-1.0.1" = self.by-version."async-each"."1.0.1";
      "glob-parent-2.0.0" = self.by-version."glob-parent"."2.0.0";
      "inherits-2.0.3" = self.by-version."inherits"."2.0.3";
      "is-binary-path-1.0.1" = self.by-version."is-binary-path"."1.0.1";
      "is-glob-2.0.1" = self.by-version."is-glob"."2.0.1";
      "path-is-absolute-1.0.1" = self.by-version."path-is-absolute"."1.0.1";
      "readdirp-2.1.0" = self.by-version."readdirp"."2.1.0";
    };
    optionalDependencies = {
      "fsevents-1.0.17" = self.by-version."fsevents"."1.0.17";
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."code-point-at"."^1.0.0" =
    self.by-version."code-point-at"."1.1.0";
  by-version."code-point-at"."1.1.0" = self.buildNodePackage {
    name = "code-point-at-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/code-point-at/-/code-point-at-1.1.0.tgz";
      name = "code-point-at-1.1.0.tgz";
      sha1 = "0d070b4d043a5bea33a2f1a40e2edb3d9a4ccf77";
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
  by-spec."commander"."^2.8.1" =
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
  by-spec."commander"."^2.9.0" =
    self.by-version."commander"."2.9.0";
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
  by-spec."console-control-strings"."^1.0.0" =
    self.by-version."console-control-strings"."1.1.0";
  by-version."console-control-strings"."1.1.0" = self.buildNodePackage {
    name = "console-control-strings-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/console-control-strings/-/console-control-strings-1.1.0.tgz";
      name = "console-control-strings-1.1.0.tgz";
      sha1 = "3d7cf4464db6446ea644bf4b39507f9851008e8e";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."console-control-strings"."~1.1.0" =
    self.by-version."console-control-strings"."1.1.0";
  by-spec."convert-source-map"."^1.1.0" =
    self.by-version."convert-source-map"."1.3.0";
  by-version."convert-source-map"."1.3.0" = self.buildNodePackage {
    name = "convert-source-map-1.3.0";
    version = "1.3.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/convert-source-map/-/convert-source-map-1.3.0.tgz";
      name = "convert-source-map-1.3.0.tgz";
      sha1 = "e9f3e9c6e2728efc2676696a70eb382f73106a67";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."core-js"."^2.4.0" =
    self.by-version."core-js"."2.4.1";
  by-version."core-js"."2.4.1" = self.buildNodePackage {
    name = "core-js-2.4.1";
    version = "2.4.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/core-js/-/core-js-2.4.1.tgz";
      name = "core-js-2.4.1.tgz";
      sha1 = "4de911e667b0eae9124e34254b53aea6fc618d3e";
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
  by-spec."debug"."^2.1.1" =
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
  by-spec."debug"."^2.2.0" =
    self.by-version."debug"."2.6.1";
  by-spec."debug"."~2.2.0" =
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
  by-spec."delegates"."^1.0.0" =
    self.by-version."delegates"."1.0.0";
  by-version."delegates"."1.0.0" = self.buildNodePackage {
    name = "delegates-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/delegates/-/delegates-1.0.0.tgz";
      name = "delegates-1.0.0.tgz";
      sha1 = "84c6e159b81904fdca59a0ef44cd870d31250f9a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."detect-indent"."^4.0.0" =
    self.by-version."detect-indent"."4.0.0";
  by-version."detect-indent"."4.0.0" = self.buildNodePackage {
    name = "detect-indent-4.0.0";
    version = "4.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/detect-indent/-/detect-indent-4.0.0.tgz";
      name = "detect-indent-4.0.0.tgz";
      sha1 = "f76d064352cdf43a1cb6ce619c4ee3a9475de208";
    };
    deps = {
      "repeating-2.0.1" = self.by-version."repeating"."2.0.1";
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
  by-spec."escape-string-regexp"."^1.0.2" =
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
  by-spec."esutils"."^2.0.0" =
    self.by-version."esutils"."2.0.2";
  by-version."esutils"."2.0.2" = self.buildNodePackage {
    name = "esutils-2.0.2";
    version = "2.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/esutils/-/esutils-2.0.2.tgz";
      name = "esutils-2.0.2.tgz";
      sha1 = "0abf4f1caa5bcb1f7a9d8acc6dea4faaa04bac9b";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."esutils"."^2.0.2" =
    self.by-version."esutils"."2.0.2";
  by-spec."expand-brackets"."^0.1.4" =
    self.by-version."expand-brackets"."0.1.5";
  by-version."expand-brackets"."0.1.5" = self.buildNodePackage {
    name = "expand-brackets-0.1.5";
    version = "0.1.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/expand-brackets/-/expand-brackets-0.1.5.tgz";
      name = "expand-brackets-0.1.5.tgz";
      sha1 = "df07284e342a807cd733ac5af72411e581d1177b";
    };
    deps = {
      "is-posix-bracket-0.1.1" = self.by-version."is-posix-bracket"."0.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."expand-range"."^1.8.1" =
    self.by-version."expand-range"."1.8.2";
  by-version."expand-range"."1.8.2" = self.buildNodePackage {
    name = "expand-range-1.8.2";
    version = "1.8.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/expand-range/-/expand-range-1.8.2.tgz";
      name = "expand-range-1.8.2.tgz";
      sha1 = "a299effd335fe2721ebae8e257ec79644fc85337";
    };
    deps = {
      "fill-range-2.2.3" = self.by-version."fill-range"."2.2.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."extend"."~3.0.0" =
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
  by-spec."extglob"."^0.3.1" =
    self.by-version."extglob"."0.3.2";
  by-version."extglob"."0.3.2" = self.buildNodePackage {
    name = "extglob-0.3.2";
    version = "0.3.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/extglob/-/extglob-0.3.2.tgz";
      name = "extglob-0.3.2.tgz";
      sha1 = "2e18ff3d2f49ab2765cec9023f011daa8d8349a1";
    };
    deps = {
      "is-extglob-1.0.0" = self.by-version."is-extglob"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
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
  by-spec."filename-regex"."^2.0.0" =
    self.by-version."filename-regex"."2.0.0";
  by-version."filename-regex"."2.0.0" = self.buildNodePackage {
    name = "filename-regex-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/filename-regex/-/filename-regex-2.0.0.tgz";
      name = "filename-regex-2.0.0.tgz";
      sha1 = "996e3e80479b98b9897f15a8a58b3d084e926775";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."fill-range"."^2.1.0" =
    self.by-version."fill-range"."2.2.3";
  by-version."fill-range"."2.2.3" = self.buildNodePackage {
    name = "fill-range-2.2.3";
    version = "2.2.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/fill-range/-/fill-range-2.2.3.tgz";
      name = "fill-range-2.2.3.tgz";
      sha1 = "50b77dfd7e469bc7492470963699fe7a8485a723";
    };
    deps = {
      "is-number-2.1.0" = self.by-version."is-number"."2.1.0";
      "isobject-2.1.0" = self.by-version."isobject"."2.1.0";
      "randomatic-1.1.6" = self.by-version."randomatic"."1.1.6";
      "repeat-element-1.1.2" = self.by-version."repeat-element"."1.1.2";
      "repeat-string-1.6.1" = self.by-version."repeat-string"."1.6.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."for-in"."^0.1.5" =
    self.by-version."for-in"."0.1.6";
  by-version."for-in"."0.1.6" = self.buildNodePackage {
    name = "for-in-0.1.6";
    version = "0.1.6";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/for-in/-/for-in-0.1.6.tgz";
      name = "for-in-0.1.6.tgz";
      sha1 = "c9f96e89bfad18a545af5ec3ed352a1d9e5b4dc8";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."for-own"."^0.1.4" =
    self.by-version."for-own"."0.1.4";
  by-version."for-own"."0.1.4" = self.buildNodePackage {
    name = "for-own-0.1.4";
    version = "0.1.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/for-own/-/for-own-0.1.4.tgz";
      name = "for-own-0.1.4.tgz";
      sha1 = "0149b41a39088c7515f51ebe1c1386d45f935072";
    };
    deps = {
      "for-in-0.1.6" = self.by-version."for-in"."0.1.6";
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
  by-spec."form-data"."~2.1.1" =
    self.by-version."form-data"."2.1.2";
  by-version."form-data"."2.1.2" = self.buildNodePackage {
    name = "form-data-2.1.2";
    version = "2.1.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/form-data/-/form-data-2.1.2.tgz";
      name = "form-data-2.1.2.tgz";
      sha1 = "89c3534008b97eada4cbb157d58f6f5df025eae4";
    };
    deps = {
      "asynckit-0.4.0" = self.by-version."asynckit"."0.4.0";
      "combined-stream-1.0.5" = self.by-version."combined-stream"."1.0.5";
      "mime-types-2.1.14" = self.by-version."mime-types"."2.1.14";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."fs-readdir-recursive"."^1.0.0" =
    self.by-version."fs-readdir-recursive"."1.0.0";
  by-version."fs-readdir-recursive"."1.0.0" = self.buildNodePackage {
    name = "fs-readdir-recursive-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/fs-readdir-recursive/-/fs-readdir-recursive-1.0.0.tgz";
      name = "fs-readdir-recursive-1.0.0.tgz";
      sha1 = "8cd1745c8b4f8a29c8caec392476921ba195f560";
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
  by-spec."fsevents"."^1.0.0" =
    self.by-version."fsevents"."1.0.17";
  by-version."fsevents"."1.0.17" = self.buildNodePackage {
    name = "fsevents-1.0.17";
    version = "1.0.17";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/fsevents/-/fsevents-1.0.17.tgz";
      name = "fsevents-1.0.17.tgz";
      sha1 = "8537f3f12272678765b4fd6528c0f1f66f8f4558";
    };
    deps = {
      "nan-2.5.1" = self.by-version."nan"."2.5.1";
      "node-pre-gyp-0.6.33" = self.by-version."node-pre-gyp"."0.6.33";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ "darwin" ];
    cpu = [ ];
  };
  by-spec."fstream"."^1.0.0" =
    self.by-version."fstream"."1.0.10";
  by-version."fstream"."1.0.10" = self.buildNodePackage {
    name = "fstream-1.0.10";
    version = "1.0.10";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/fstream/-/fstream-1.0.10.tgz";
      name = "fstream-1.0.10.tgz";
      sha1 = "604e8a92fe26ffd9f6fae30399d4984e1ab22822";
    };
    deps = {
      "graceful-fs-4.1.11" = self.by-version."graceful-fs"."4.1.11";
      "inherits-2.0.3" = self.by-version."inherits"."2.0.3";
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "rimraf-2.5.4" = self.by-version."rimraf"."2.5.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."fstream"."^1.0.2" =
    self.by-version."fstream"."1.0.10";
  by-spec."fstream"."~1.0.10" =
    self.by-version."fstream"."1.0.10";
  by-spec."fstream-ignore"."~1.0.5" =
    self.by-version."fstream-ignore"."1.0.5";
  by-version."fstream-ignore"."1.0.5" = self.buildNodePackage {
    name = "fstream-ignore-1.0.5";
    version = "1.0.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/fstream-ignore/-/fstream-ignore-1.0.5.tgz";
      name = "fstream-ignore-1.0.5.tgz";
      sha1 = "9c31dae34767018fe1d249b24dada67d092da105";
    };
    deps = {
      "fstream-1.0.10" = self.by-version."fstream"."1.0.10";
      "inherits-2.0.3" = self.by-version."inherits"."2.0.3";
      "minimatch-3.0.3" = self.by-version."minimatch"."3.0.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."gauge"."~2.7.1" =
    self.by-version."gauge"."2.7.3";
  by-version."gauge"."2.7.3" = self.buildNodePackage {
    name = "gauge-2.7.3";
    version = "2.7.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/gauge/-/gauge-2.7.3.tgz";
      name = "gauge-2.7.3.tgz";
      sha1 = "1c23855f962f17b3ad3d0dc7443f304542edfe09";
    };
    deps = {
      "aproba-1.1.1" = self.by-version."aproba"."1.1.1";
      "console-control-strings-1.1.0" = self.by-version."console-control-strings"."1.1.0";
      "has-unicode-2.0.1" = self.by-version."has-unicode"."2.0.1";
      "object-assign-4.1.1" = self.by-version."object-assign"."4.1.1";
      "signal-exit-3.0.2" = self.by-version."signal-exit"."3.0.2";
      "string-width-1.0.2" = self.by-version."string-width"."1.0.2";
      "strip-ansi-3.0.1" = self.by-version."strip-ansi"."3.0.1";
      "wide-align-1.1.0" = self.by-version."wide-align"."1.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."generate-function"."^2.0.0" =
    self.by-version."generate-function"."2.0.0";
  by-version."generate-function"."2.0.0" = self.buildNodePackage {
    name = "generate-function-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/generate-function/-/generate-function-2.0.0.tgz";
      name = "generate-function-2.0.0.tgz";
      sha1 = "6858fe7c0969b7d4e9093337647ac79f60dfbe74";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."generate-object-property"."^1.1.0" =
    self.by-version."generate-object-property"."1.2.0";
  by-version."generate-object-property"."1.2.0" = self.buildNodePackage {
    name = "generate-object-property-1.2.0";
    version = "1.2.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/generate-object-property/-/generate-object-property-1.2.0.tgz";
      name = "generate-object-property-1.2.0.tgz";
      sha1 = "9c0e1c40308ce804f4783618b937fa88f99d50d0";
    };
    deps = {
      "is-property-1.0.2" = self.by-version."is-property"."1.0.2";
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
  by-spec."glob"."^7.0.0" =
    self.by-version."glob"."7.1.1";
  by-version."glob"."7.1.1" = self.buildNodePackage {
    name = "glob-7.1.1";
    version = "7.1.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/glob/-/glob-7.1.1.tgz";
      name = "glob-7.1.1.tgz";
      sha1 = "805211df04faaf1c63a3600306cdf5ade50b2ec8";
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
  by-spec."glob"."^7.0.5" =
    self.by-version."glob"."7.1.1";
  by-spec."glob-base"."^0.3.0" =
    self.by-version."glob-base"."0.3.0";
  by-version."glob-base"."0.3.0" = self.buildNodePackage {
    name = "glob-base-0.3.0";
    version = "0.3.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/glob-base/-/glob-base-0.3.0.tgz";
      name = "glob-base-0.3.0.tgz";
      sha1 = "dbb164f6221b1c0b1ccf82aea328b497df0ea3c4";
    };
    deps = {
      "glob-parent-2.0.0" = self.by-version."glob-parent"."2.0.0";
      "is-glob-2.0.1" = self.by-version."is-glob"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."glob-parent"."^2.0.0" =
    self.by-version."glob-parent"."2.0.0";
  by-version."glob-parent"."2.0.0" = self.buildNodePackage {
    name = "glob-parent-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/glob-parent/-/glob-parent-2.0.0.tgz";
      name = "glob-parent-2.0.0.tgz";
      sha1 = "81383d72db054fcccf5336daa902f182f6edbb28";
    };
    deps = {
      "is-glob-2.0.1" = self.by-version."is-glob"."2.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."globals"."^9.0.0" =
    self.by-version."globals"."9.14.0";
  by-version."globals"."9.14.0" = self.buildNodePackage {
    name = "globals-9.14.0";
    version = "9.14.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/globals/-/globals-9.14.0.tgz";
      name = "globals-9.14.0.tgz";
      sha1 = "8859936af0038741263053b39d0e76ca241e4034";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."graceful-fs"."^4.1.2" =
    self.by-version."graceful-fs"."4.1.11";
  by-version."graceful-fs"."4.1.11" = self.buildNodePackage {
    name = "graceful-fs-4.1.11";
    version = "4.1.11";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/graceful-fs/-/graceful-fs-4.1.11.tgz";
      name = "graceful-fs-4.1.11.tgz";
      sha1 = "0e8bdfe4d1ddb8854d64e04ea7c00e2a026e5658";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."graceful-fs"."^4.1.4" =
    self.by-version."graceful-fs"."4.1.11";
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
  by-spec."har-validator"."~2.0.6" =
    self.by-version."har-validator"."2.0.6";
  by-version."har-validator"."2.0.6" = self.buildNodePackage {
    name = "har-validator-2.0.6";
    version = "2.0.6";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/har-validator/-/har-validator-2.0.6.tgz";
      name = "har-validator-2.0.6.tgz";
      sha1 = "cdcbc08188265ad119b6a5a7c8ab70eecfb5d27d";
    };
    deps = {
      "chalk-1.1.3" = self.by-version."chalk"."1.1.3";
      "commander-2.9.0" = self.by-version."commander"."2.9.0";
      "is-my-json-valid-2.15.0" = self.by-version."is-my-json-valid"."2.15.0";
      "pinkie-promise-2.0.1" = self.by-version."pinkie-promise"."2.0.1";
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
  by-spec."has-unicode"."^2.0.0" =
    self.by-version."has-unicode"."2.0.1";
  by-version."has-unicode"."2.0.1" = self.buildNodePackage {
    name = "has-unicode-2.0.1";
    version = "2.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/has-unicode/-/has-unicode-2.0.1.tgz";
      name = "has-unicode-2.0.1.tgz";
      sha1 = "e0e6fe6a28cf51138855e086d1691e771de2a8b9";
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
  by-spec."home-or-tmp"."^2.0.0" =
    self.by-version."home-or-tmp"."2.0.0";
  by-version."home-or-tmp"."2.0.0" = self.buildNodePackage {
    name = "home-or-tmp-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/home-or-tmp/-/home-or-tmp-2.0.0.tgz";
      name = "home-or-tmp-2.0.0.tgz";
      sha1 = "e36c3f2d2cae7d746a857e38d18d5f32a7882db8";
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
      "jsprim-1.3.1" = self.by-version."jsprim"."1.3.1";
      "sshpk-1.10.2" = self.by-version."sshpk"."1.10.2";
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
  by-spec."inherits"."^2.0.1" =
    self.by-version."inherits"."2.0.3";
  by-spec."inherits"."~2.0.0" =
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
  by-spec."invariant"."^2.2.0" =
    self.by-version."invariant"."2.2.2";
  by-version."invariant"."2.2.2" = self.buildNodePackage {
    name = "invariant-2.2.2";
    version = "2.2.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/invariant/-/invariant-2.2.2.tgz";
      name = "invariant-2.2.2.tgz";
      sha1 = "9e1f56ac0acdb6bf303306f338be3b204ae60360";
    };
    deps = {
      "loose-envify-1.3.1" = self.by-version."loose-envify"."1.3.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-binary-path"."^1.0.0" =
    self.by-version."is-binary-path"."1.0.1";
  by-version."is-binary-path"."1.0.1" = self.buildNodePackage {
    name = "is-binary-path-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/is-binary-path/-/is-binary-path-1.0.1.tgz";
      name = "is-binary-path-1.0.1.tgz";
      sha1 = "75f16642b480f187a711c814161fd3a4a7655898";
    };
    deps = {
      "binary-extensions-1.8.0" = self.by-version."binary-extensions"."1.8.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-buffer"."^1.0.2" =
    self.by-version."is-buffer"."1.1.4";
  by-version."is-buffer"."1.1.4" = self.buildNodePackage {
    name = "is-buffer-1.1.4";
    version = "1.1.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/is-buffer/-/is-buffer-1.1.4.tgz";
      name = "is-buffer-1.1.4.tgz";
      sha1 = "cfc86ccd5dc5a52fa80489111c6920c457e2d98b";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-dotfile"."^1.0.0" =
    self.by-version."is-dotfile"."1.0.2";
  by-version."is-dotfile"."1.0.2" = self.buildNodePackage {
    name = "is-dotfile-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/is-dotfile/-/is-dotfile-1.0.2.tgz";
      name = "is-dotfile-1.0.2.tgz";
      sha1 = "2c132383f39199f8edc268ca01b9b007d205cc4d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-equal-shallow"."^0.1.3" =
    self.by-version."is-equal-shallow"."0.1.3";
  by-version."is-equal-shallow"."0.1.3" = self.buildNodePackage {
    name = "is-equal-shallow-0.1.3";
    version = "0.1.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/is-equal-shallow/-/is-equal-shallow-0.1.3.tgz";
      name = "is-equal-shallow-0.1.3.tgz";
      sha1 = "2238098fc221de0bcfa5d9eac4c45d638aa1c534";
    };
    deps = {
      "is-primitive-2.0.0" = self.by-version."is-primitive"."2.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-extendable"."^0.1.1" =
    self.by-version."is-extendable"."0.1.1";
  by-version."is-extendable"."0.1.1" = self.buildNodePackage {
    name = "is-extendable-0.1.1";
    version = "0.1.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/is-extendable/-/is-extendable-0.1.1.tgz";
      name = "is-extendable-0.1.1.tgz";
      sha1 = "62b110e289a471418e3ec36a617d472e301dfc89";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-extglob"."^1.0.0" =
    self.by-version."is-extglob"."1.0.0";
  by-version."is-extglob"."1.0.0" = self.buildNodePackage {
    name = "is-extglob-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/is-extglob/-/is-extglob-1.0.0.tgz";
      name = "is-extglob-1.0.0.tgz";
      sha1 = "ac468177c4943405a092fc8f29760c6ffc6206c0";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-finite"."^1.0.0" =
    self.by-version."is-finite"."1.0.2";
  by-version."is-finite"."1.0.2" = self.buildNodePackage {
    name = "is-finite-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/is-finite/-/is-finite-1.0.2.tgz";
      name = "is-finite-1.0.2.tgz";
      sha1 = "cc6677695602be550ef11e8b4aa6305342b6d0aa";
    };
    deps = {
      "number-is-nan-1.0.1" = self.by-version."number-is-nan"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-fullwidth-code-point"."^1.0.0" =
    self.by-version."is-fullwidth-code-point"."1.0.0";
  by-version."is-fullwidth-code-point"."1.0.0" = self.buildNodePackage {
    name = "is-fullwidth-code-point-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/is-fullwidth-code-point/-/is-fullwidth-code-point-1.0.0.tgz";
      name = "is-fullwidth-code-point-1.0.0.tgz";
      sha1 = "ef9e31386f031a7f0d643af82fde50c457ef00cb";
    };
    deps = {
      "number-is-nan-1.0.1" = self.by-version."number-is-nan"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-glob"."^2.0.0" =
    self.by-version."is-glob"."2.0.1";
  by-version."is-glob"."2.0.1" = self.buildNodePackage {
    name = "is-glob-2.0.1";
    version = "2.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/is-glob/-/is-glob-2.0.1.tgz";
      name = "is-glob-2.0.1.tgz";
      sha1 = "d096f926a3ded5600f3fdfd91198cb0888c2d863";
    };
    deps = {
      "is-extglob-1.0.0" = self.by-version."is-extglob"."1.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-glob"."^2.0.1" =
    self.by-version."is-glob"."2.0.1";
  by-spec."is-my-json-valid"."^2.12.4" =
    self.by-version."is-my-json-valid"."2.15.0";
  by-version."is-my-json-valid"."2.15.0" = self.buildNodePackage {
    name = "is-my-json-valid-2.15.0";
    version = "2.15.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/is-my-json-valid/-/is-my-json-valid-2.15.0.tgz";
      name = "is-my-json-valid-2.15.0.tgz";
      sha1 = "936edda3ca3c211fd98f3b2d3e08da43f7b2915b";
    };
    deps = {
      "generate-function-2.0.0" = self.by-version."generate-function"."2.0.0";
      "generate-object-property-1.2.0" = self.by-version."generate-object-property"."1.2.0";
      "jsonpointer-4.0.1" = self.by-version."jsonpointer"."4.0.1";
      "xtend-4.0.1" = self.by-version."xtend"."4.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-number"."^2.0.2" =
    self.by-version."is-number"."2.1.0";
  by-version."is-number"."2.1.0" = self.buildNodePackage {
    name = "is-number-2.1.0";
    version = "2.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/is-number/-/is-number-2.1.0.tgz";
      name = "is-number-2.1.0.tgz";
      sha1 = "01fcbbb393463a548f2f466cce16dece49db908f";
    };
    deps = {
      "kind-of-3.1.0" = self.by-version."kind-of"."3.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-number"."^2.1.0" =
    self.by-version."is-number"."2.1.0";
  by-spec."is-posix-bracket"."^0.1.0" =
    self.by-version."is-posix-bracket"."0.1.1";
  by-version."is-posix-bracket"."0.1.1" = self.buildNodePackage {
    name = "is-posix-bracket-0.1.1";
    version = "0.1.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/is-posix-bracket/-/is-posix-bracket-0.1.1.tgz";
      name = "is-posix-bracket-0.1.1.tgz";
      sha1 = "3334dc79774368e92f016e6fbc0a88f5cd6e6bc4";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-primitive"."^2.0.0" =
    self.by-version."is-primitive"."2.0.0";
  by-version."is-primitive"."2.0.0" = self.buildNodePackage {
    name = "is-primitive-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/is-primitive/-/is-primitive-2.0.0.tgz";
      name = "is-primitive-2.0.0.tgz";
      sha1 = "207bab91638499c07b2adf240a41a87210034575";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."is-property"."^1.0.0" =
    self.by-version."is-property"."1.0.2";
  by-version."is-property"."1.0.2" = self.buildNodePackage {
    name = "is-property-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/is-property/-/is-property-1.0.2.tgz";
      name = "is-property-1.0.2.tgz";
      sha1 = "57fe1c4e48474edd65b09911f26b1cd4095dda84";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
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
  by-spec."isarray"."1.0.0" =
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
  by-spec."isarray"."~1.0.0" =
    self.by-version."isarray"."1.0.0";
  by-spec."isobject"."^2.0.0" =
    self.by-version."isobject"."2.1.0";
  by-version."isobject"."2.1.0" = self.buildNodePackage {
    name = "isobject-2.1.0";
    version = "2.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/isobject/-/isobject-2.1.0.tgz";
      name = "isobject-2.1.0.tgz";
      sha1 = "f065561096a3f1da2ef46272f815c840d87e0c89";
    };
    deps = {
      "isarray-1.0.0" = self.by-version."isarray"."1.0.0";
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
  by-spec."jsesc"."^1.3.0" =
    self.by-version."jsesc"."1.3.0";
  by-version."jsesc"."1.3.0" = self.buildNodePackage {
    name = "jsesc-1.3.0";
    version = "1.3.0";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/jsesc/-/jsesc-1.3.0.tgz";
      name = "jsesc-1.3.0.tgz";
      sha1 = "46c3fec8c1892b12b0833db9bc7622176dbab34b";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."jsesc"."~0.5.0" =
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
  by-spec."json5"."^0.5.0" =
    self.by-version."json5"."0.5.1";
  by-version."json5"."0.5.1" = self.buildNodePackage {
    name = "json5-0.5.1";
    version = "0.5.1";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/json5/-/json5-0.5.1.tgz";
      name = "json5-0.5.1.tgz";
      sha1 = "1eade7acc012034ad84e2396767ead9fa5495821";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."jsonpointer"."^4.0.0" =
    self.by-version."jsonpointer"."4.0.1";
  by-version."jsonpointer"."4.0.1" = self.buildNodePackage {
    name = "jsonpointer-4.0.1";
    version = "4.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/jsonpointer/-/jsonpointer-4.0.1.tgz";
      name = "jsonpointer-4.0.1.tgz";
      sha1 = "4fd92cb34e0e9db3c89c8622ecf51f9b978c6cb9";
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
    self.by-version."jsprim"."1.3.1";
  by-version."jsprim"."1.3.1" = self.buildNodePackage {
    name = "jsprim-1.3.1";
    version = "1.3.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/jsprim/-/jsprim-1.3.1.tgz";
      name = "jsprim-1.3.1.tgz";
      sha1 = "2a7256f70412a29ee3670aaca625994c4dcff252";
    };
    deps = {
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
  by-spec."kind-of"."^3.0.2" =
    self.by-version."kind-of"."3.1.0";
  by-version."kind-of"."3.1.0" = self.buildNodePackage {
    name = "kind-of-3.1.0";
    version = "3.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/kind-of/-/kind-of-3.1.0.tgz";
      name = "kind-of-3.1.0.tgz";
      sha1 = "475d698a5e49ff5e53d14e3e732429dc8bf4cf47";
    };
    deps = {
      "is-buffer-1.1.4" = self.by-version."is-buffer"."1.1.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."lodash"."^4.2.0" =
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
  by-spec."micromatch"."^2.1.5" =
    self.by-version."micromatch"."2.3.11";
  by-version."micromatch"."2.3.11" = self.buildNodePackage {
    name = "micromatch-2.3.11";
    version = "2.3.11";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/micromatch/-/micromatch-2.3.11.tgz";
      name = "micromatch-2.3.11.tgz";
      sha1 = "86677c97d1720b363431d04d0d15293bd38c1565";
    };
    deps = {
      "arr-diff-2.0.0" = self.by-version."arr-diff"."2.0.0";
      "array-unique-0.2.1" = self.by-version."array-unique"."0.2.1";
      "braces-1.8.5" = self.by-version."braces"."1.8.5";
      "expand-brackets-0.1.5" = self.by-version."expand-brackets"."0.1.5";
      "extglob-0.3.2" = self.by-version."extglob"."0.3.2";
      "filename-regex-2.0.0" = self.by-version."filename-regex"."2.0.0";
      "is-extglob-1.0.0" = self.by-version."is-extglob"."1.0.0";
      "is-glob-2.0.1" = self.by-version."is-glob"."2.0.1";
      "kind-of-3.1.0" = self.by-version."kind-of"."3.1.0";
      "normalize-path-2.0.1" = self.by-version."normalize-path"."2.0.1";
      "object.omit-2.0.1" = self.by-version."object.omit"."2.0.1";
      "parse-glob-3.0.4" = self.by-version."parse-glob"."3.0.4";
      "regex-cache-0.4.3" = self.by-version."regex-cache"."0.4.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mime-db"."~1.26.0" =
    self.by-version."mime-db"."1.26.0";
  by-version."mime-db"."1.26.0" = self.buildNodePackage {
    name = "mime-db-1.26.0";
    version = "1.26.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/mime-db/-/mime-db-1.26.0.tgz";
      name = "mime-db-1.26.0.tgz";
      sha1 = "eaffcd0e4fc6935cf8134da246e2e6c35305adff";
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
    self.by-version."mime-types"."2.1.14";
  by-version."mime-types"."2.1.14" = self.buildNodePackage {
    name = "mime-types-2.1.14";
    version = "2.1.14";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/mime-types/-/mime-types-2.1.14.tgz";
      name = "mime-types-2.1.14.tgz";
      sha1 = "f7ef7d97583fcaf3b7d282b6f8b5679dab1e94ee";
    };
    deps = {
      "mime-db-1.26.0" = self.by-version."mime-db"."1.26.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."mime-types"."~2.1.7" =
    self.by-version."mime-types"."2.1.14";
  by-spec."minimatch"."^3.0.0" =
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
      "brace-expansion-1.1.6" = self.by-version."brace-expansion"."1.1.6";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."minimatch"."^3.0.2" =
    self.by-version."minimatch"."3.0.3";
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
  by-spec."minimist"."^1.2.0" =
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
  by-spec."mkdirp".">=0.5 0" =
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
  by-spec."mkdirp"."^0.5.1" =
    self.by-version."mkdirp"."0.5.1";
  by-spec."mkdirp"."~0.5.1" =
    self.by-version."mkdirp"."0.5.1";
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
  by-spec."nan"."^2.3.0" =
    self.by-version."nan"."2.5.1";
  by-version."nan"."2.5.1" = self.buildNodePackage {
    name = "nan-2.5.1";
    version = "2.5.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/nan/-/nan-2.5.1.tgz";
      name = "nan-2.5.1.tgz";
      sha1 = "d5b01691253326a97a2bbee9e61c55d8d60351e2";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."node-pre-gyp"."^0.6.29" =
    self.by-version."node-pre-gyp"."0.6.33";
  by-version."node-pre-gyp"."0.6.33" = self.buildNodePackage {
    name = "node-pre-gyp-0.6.33";
    version = "0.6.33";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/node-pre-gyp/-/node-pre-gyp-0.6.33.tgz";
      name = "node-pre-gyp-0.6.33.tgz";
      sha1 = "640ac55198f6a925972e0c16c4ac26a034d5ecc9";
    };
    deps = {
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "nopt-3.0.6" = self.by-version."nopt"."3.0.6";
      "npmlog-4.0.2" = self.by-version."npmlog"."4.0.2";
      "rc-1.1.6" = self.by-version."rc"."1.1.6";
      "request-2.79.0" = self.by-version."request"."2.79.0";
      "rimraf-2.5.4" = self.by-version."rimraf"."2.5.4";
      "semver-5.3.0" = self.by-version."semver"."5.3.0";
      "tar-2.2.1" = self.by-version."tar"."2.2.1";
      "tar-pack-3.3.0" = self.by-version."tar-pack"."3.3.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."nopt"."~3.0.6" =
    self.by-version."nopt"."3.0.6";
  by-version."nopt"."3.0.6" = self.buildNodePackage {
    name = "nopt-3.0.6";
    version = "3.0.6";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/nopt/-/nopt-3.0.6.tgz";
      name = "nopt-3.0.6.tgz";
      sha1 = "c6465dbf08abcd4db359317f79ac68a646b28ff9";
    };
    deps = {
      "abbrev-1.0.9" = self.by-version."abbrev"."1.0.9";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."normalize-path"."^2.0.1" =
    self.by-version."normalize-path"."2.0.1";
  by-version."normalize-path"."2.0.1" = self.buildNodePackage {
    name = "normalize-path-2.0.1";
    version = "2.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/normalize-path/-/normalize-path-2.0.1.tgz";
      name = "normalize-path-2.0.1.tgz";
      sha1 = "47886ac1662760d4261b7d979d241709d3ce3f7a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."npmlog"."^4.0.1" =
    self.by-version."npmlog"."4.0.2";
  by-version."npmlog"."4.0.2" = self.buildNodePackage {
    name = "npmlog-4.0.2";
    version = "4.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/npmlog/-/npmlog-4.0.2.tgz";
      name = "npmlog-4.0.2.tgz";
      sha1 = "d03950e0e78ce1527ba26d2a7592e9348ac3e75f";
    };
    deps = {
      "are-we-there-yet-1.1.2" = self.by-version."are-we-there-yet"."1.1.2";
      "console-control-strings-1.1.0" = self.by-version."console-control-strings"."1.1.0";
      "gauge-2.7.3" = self.by-version."gauge"."2.7.3";
      "set-blocking-2.0.0" = self.by-version."set-blocking"."2.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."number-is-nan"."^1.0.0" =
    self.by-version."number-is-nan"."1.0.1";
  by-version."number-is-nan"."1.0.1" = self.buildNodePackage {
    name = "number-is-nan-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/number-is-nan/-/number-is-nan-1.0.1.tgz";
      name = "number-is-nan-1.0.1.tgz";
      sha1 = "097b602b53422a522c1afb8790318336941a011d";
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
  by-spec."object.omit"."^2.0.0" =
    self.by-version."object.omit"."2.0.1";
  by-version."object.omit"."2.0.1" = self.buildNodePackage {
    name = "object.omit-2.0.1";
    version = "2.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/object.omit/-/object.omit-2.0.1.tgz";
      name = "object.omit-2.0.1.tgz";
      sha1 = "1a9c744829f39dbb858c76ca3579ae2a54ebd1fa";
    };
    deps = {
      "for-own-0.1.4" = self.by-version."for-own"."0.1.4";
      "is-extendable-0.1.1" = self.by-version."is-extendable"."0.1.1";
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
  by-spec."once"."~1.3.3" =
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
  by-spec."os-tmpdir"."^1.0.1" =
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
  by-spec."output-file-sync"."^1.1.0" =
    self.by-version."output-file-sync"."1.1.2";
  by-version."output-file-sync"."1.1.2" = self.buildNodePackage {
    name = "output-file-sync-1.1.2";
    version = "1.1.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/output-file-sync/-/output-file-sync-1.1.2.tgz";
      name = "output-file-sync-1.1.2.tgz";
      sha1 = "d0a33eefe61a205facb90092e826598d5245ce76";
    };
    deps = {
      "graceful-fs-4.1.11" = self.by-version."graceful-fs"."4.1.11";
      "mkdirp-0.5.1" = self.by-version."mkdirp"."0.5.1";
      "object-assign-4.1.1" = self.by-version."object-assign"."4.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."parse-glob"."^3.0.4" =
    self.by-version."parse-glob"."3.0.4";
  by-version."parse-glob"."3.0.4" = self.buildNodePackage {
    name = "parse-glob-3.0.4";
    version = "3.0.4";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/parse-glob/-/parse-glob-3.0.4.tgz";
      name = "parse-glob-3.0.4.tgz";
      sha1 = "b2c376cfb11f35513badd173ef0bb6e3a388391c";
    };
    deps = {
      "glob-base-0.3.0" = self.by-version."glob-base"."0.3.0";
      "is-dotfile-1.0.2" = self.by-version."is-dotfile"."1.0.2";
      "is-extglob-1.0.0" = self.by-version."is-extglob"."1.0.0";
      "is-glob-2.0.1" = self.by-version."is-glob"."2.0.1";
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
  by-spec."preserve"."^0.2.0" =
    self.by-version."preserve"."0.2.0";
  by-version."preserve"."0.2.0" = self.buildNodePackage {
    name = "preserve-0.2.0";
    version = "0.2.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/preserve/-/preserve-0.2.0.tgz";
      name = "preserve-0.2.0.tgz";
      sha1 = "815ed1f6ebc65926f865b310c0713bcb3315ce4b";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."private"."^0.1.6" =
    self.by-version."private"."0.1.7";
  by-version."private"."0.1.7" = self.buildNodePackage {
    name = "private-0.1.7";
    version = "0.1.7";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/private/-/private-0.1.7.tgz";
      name = "private-0.1.7.tgz";
      sha1 = "68ce5e8a1ef0a23bb570cc28537b5332aba63ef1";
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
  by-spec."qs"."~6.3.0" =
    self.by-version."qs"."6.3.0";
  by-version."qs"."6.3.0" = self.buildNodePackage {
    name = "qs-6.3.0";
    version = "6.3.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/qs/-/qs-6.3.0.tgz";
      name = "qs-6.3.0.tgz";
      sha1 = "f403b264f23bc01228c74131b407f18d5ea5d442";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."randomatic"."^1.1.3" =
    self.by-version."randomatic"."1.1.6";
  by-version."randomatic"."1.1.6" = self.buildNodePackage {
    name = "randomatic-1.1.6";
    version = "1.1.6";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/randomatic/-/randomatic-1.1.6.tgz";
      name = "randomatic-1.1.6.tgz";
      sha1 = "110dcabff397e9dcff7c0789ccc0a49adf1ec5bb";
    };
    deps = {
      "is-number-2.1.0" = self.by-version."is-number"."2.1.0";
      "kind-of-3.1.0" = self.by-version."kind-of"."3.1.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."rc"."~1.1.6" =
    self.by-version."rc"."1.1.6";
  by-version."rc"."1.1.6" = self.buildNodePackage {
    name = "rc-1.1.6";
    version = "1.1.6";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/rc/-/rc-1.1.6.tgz";
      name = "rc-1.1.6.tgz";
      sha1 = "43651b76b6ae53b5c802f1151fa3fc3b059969c9";
    };
    deps = {
      "deep-extend-0.4.1" = self.by-version."deep-extend"."0.4.1";
      "ini-1.3.4" = self.by-version."ini"."1.3.4";
      "minimist-1.2.0" = self.by-version."minimist"."1.2.0";
      "strip-json-comments-1.0.4" = self.by-version."strip-json-comments"."1.0.4";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."readable-stream"."^2.0.0 || ^1.1.13" =
    self.by-version."readable-stream"."2.2.2";
  by-version."readable-stream"."2.2.2" = self.buildNodePackage {
    name = "readable-stream-2.2.2";
    version = "2.2.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/readable-stream/-/readable-stream-2.2.2.tgz";
      name = "readable-stream-2.2.2.tgz";
      sha1 = "a9e6fec3c7dda85f8bb1b3ba7028604556fc825e";
    };
    deps = {
      "buffer-shims-1.0.0" = self.by-version."buffer-shims"."1.0.0";
      "core-util-is-1.0.2" = self.by-version."core-util-is"."1.0.2";
      "isarray-1.0.0" = self.by-version."isarray"."1.0.0";
      "inherits-2.0.3" = self.by-version."inherits"."2.0.3";
      "process-nextick-args-1.0.7" = self.by-version."process-nextick-args"."1.0.7";
      "string_decoder-0.10.31" = self.by-version."string_decoder"."0.10.31";
      "util-deprecate-1.0.2" = self.by-version."util-deprecate"."1.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."readable-stream"."^2.0.2" =
    self.by-version."readable-stream"."2.2.2";
  by-spec."readable-stream"."~2.1.4" =
    self.by-version."readable-stream"."2.1.5";
  by-version."readable-stream"."2.1.5" = self.buildNodePackage {
    name = "readable-stream-2.1.5";
    version = "2.1.5";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/readable-stream/-/readable-stream-2.1.5.tgz";
      name = "readable-stream-2.1.5.tgz";
      sha1 = "66fa8b720e1438b364681f2ad1a63c618448c9d0";
    };
    deps = {
      "buffer-shims-1.0.0" = self.by-version."buffer-shims"."1.0.0";
      "core-util-is-1.0.2" = self.by-version."core-util-is"."1.0.2";
      "inherits-2.0.3" = self.by-version."inherits"."2.0.3";
      "isarray-1.0.0" = self.by-version."isarray"."1.0.0";
      "process-nextick-args-1.0.7" = self.by-version."process-nextick-args"."1.0.7";
      "string_decoder-0.10.31" = self.by-version."string_decoder"."0.10.31";
      "util-deprecate-1.0.2" = self.by-version."util-deprecate"."1.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."readdirp"."^2.0.0" =
    self.by-version."readdirp"."2.1.0";
  by-version."readdirp"."2.1.0" = self.buildNodePackage {
    name = "readdirp-2.1.0";
    version = "2.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/readdirp/-/readdirp-2.1.0.tgz";
      name = "readdirp-2.1.0.tgz";
      sha1 = "4ed0ad060df3073300c48440373f72d1cc642d78";
    };
    deps = {
      "graceful-fs-4.1.11" = self.by-version."graceful-fs"."4.1.11";
      "minimatch-3.0.3" = self.by-version."minimatch"."3.0.3";
      "readable-stream-2.2.2" = self.by-version."readable-stream"."2.2.2";
      "set-immediate-shim-1.0.1" = self.by-version."set-immediate-shim"."1.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."regenerate"."^1.2.1" =
    self.by-version."regenerate"."1.3.2";
  by-version."regenerate"."1.3.2" = self.buildNodePackage {
    name = "regenerate-1.3.2";
    version = "1.3.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/regenerate/-/regenerate-1.3.2.tgz";
      name = "regenerate-1.3.2.tgz";
      sha1 = "d1941c67bad437e1be76433add5b385f95b19260";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."regenerator-runtime"."^0.10.0" =
    self.by-version."regenerator-runtime"."0.10.1";
  by-version."regenerator-runtime"."0.10.1" = self.buildNodePackage {
    name = "regenerator-runtime-0.10.1";
    version = "0.10.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/regenerator-runtime/-/regenerator-runtime-0.10.1.tgz";
      name = "regenerator-runtime-0.10.1.tgz";
      sha1 = "257f41961ce44558b18f7814af48c17559f9faeb";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."regenerator-transform"."0.9.8" =
    self.by-version."regenerator-transform"."0.9.8";
  by-version."regenerator-transform"."0.9.8" = self.buildNodePackage {
    name = "regenerator-transform-0.9.8";
    version = "0.9.8";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/regenerator-transform/-/regenerator-transform-0.9.8.tgz";
      name = "regenerator-transform-0.9.8.tgz";
      sha1 = "0f88bb2bc03932ddb7b6b7312e68078f01026d6c";
    };
    deps = {
      "babel-runtime-6.22.0" = self.by-version."babel-runtime"."6.22.0";
      "babel-types-6.22.0" = self.by-version."babel-types"."6.22.0";
      "private-0.1.7" = self.by-version."private"."0.1.7";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."regex-cache"."^0.4.2" =
    self.by-version."regex-cache"."0.4.3";
  by-version."regex-cache"."0.4.3" = self.buildNodePackage {
    name = "regex-cache-0.4.3";
    version = "0.4.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/regex-cache/-/regex-cache-0.4.3.tgz";
      name = "regex-cache-0.4.3.tgz";
      sha1 = "9b1a6c35d4d0dfcef5711ae651e8e9d3d7114145";
    };
    deps = {
      "is-equal-shallow-0.1.3" = self.by-version."is-equal-shallow"."0.1.3";
      "is-primitive-2.0.0" = self.by-version."is-primitive"."2.0.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."regexpu-core"."^2.0.0" =
    self.by-version."regexpu-core"."2.0.0";
  by-version."regexpu-core"."2.0.0" = self.buildNodePackage {
    name = "regexpu-core-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/regexpu-core/-/regexpu-core-2.0.0.tgz";
      name = "regexpu-core-2.0.0.tgz";
      sha1 = "49d038837b8dcf8bfa5b9a42139938e6ea2ae240";
    };
    deps = {
      "regenerate-1.3.2" = self.by-version."regenerate"."1.3.2";
      "regjsgen-0.2.0" = self.by-version."regjsgen"."0.2.0";
      "regjsparser-0.1.5" = self.by-version."regjsparser"."0.1.5";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."regjsgen"."^0.2.0" =
    self.by-version."regjsgen"."0.2.0";
  by-version."regjsgen"."0.2.0" = self.buildNodePackage {
    name = "regjsgen-0.2.0";
    version = "0.2.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/regjsgen/-/regjsgen-0.2.0.tgz";
      name = "regjsgen-0.2.0.tgz";
      sha1 = "6c016adeac554f75823fe37ac05b92d5a4edb1f7";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."regjsparser"."^0.1.4" =
    self.by-version."regjsparser"."0.1.5";
  by-version."regjsparser"."0.1.5" = self.buildNodePackage {
    name = "regjsparser-0.1.5";
    version = "0.1.5";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/regjsparser/-/regjsparser-0.1.5.tgz";
      name = "regjsparser-0.1.5.tgz";
      sha1 = "7ee8f84dc6fa792d3fd0ae228d24bd949ead205c";
    };
    deps = {
      "jsesc-0.5.0" = self.by-version."jsesc"."0.5.0";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."repeat-element"."^1.1.2" =
    self.by-version."repeat-element"."1.1.2";
  by-version."repeat-element"."1.1.2" = self.buildNodePackage {
    name = "repeat-element-1.1.2";
    version = "1.1.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/repeat-element/-/repeat-element-1.1.2.tgz";
      name = "repeat-element-1.1.2.tgz";
      sha1 = "ef089a178d1483baae4d93eb98b4f9e4e11d990a";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."repeat-string"."^1.5.2" =
    self.by-version."repeat-string"."1.6.1";
  by-version."repeat-string"."1.6.1" = self.buildNodePackage {
    name = "repeat-string-1.6.1";
    version = "1.6.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/repeat-string/-/repeat-string-1.6.1.tgz";
      name = "repeat-string-1.6.1.tgz";
      sha1 = "8dcae470e1c88abc2d600fff4a776286da75e637";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."repeating"."^2.0.0" =
    self.by-version."repeating"."2.0.1";
  by-version."repeating"."2.0.1" = self.buildNodePackage {
    name = "repeating-2.0.1";
    version = "2.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/repeating/-/repeating-2.0.1.tgz";
      name = "repeating-2.0.1.tgz";
      sha1 = "5214c53a926d3552707527fbab415dbc08d06dda";
    };
    deps = {
      "is-finite-1.0.2" = self.by-version."is-finite"."1.0.2";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."request"."^2.79.0" =
    self.by-version."request"."2.79.0";
  by-version."request"."2.79.0" = self.buildNodePackage {
    name = "request-2.79.0";
    version = "2.79.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/request/-/request-2.79.0.tgz";
      name = "request-2.79.0.tgz";
      sha1 = "4dfe5bf6be8b8cdc37fcf93e04b65577722710de";
    };
    deps = {
      "aws-sign2-0.6.0" = self.by-version."aws-sign2"."0.6.0";
      "aws4-1.6.0" = self.by-version."aws4"."1.6.0";
      "caseless-0.11.0" = self.by-version."caseless"."0.11.0";
      "combined-stream-1.0.5" = self.by-version."combined-stream"."1.0.5";
      "extend-3.0.0" = self.by-version."extend"."3.0.0";
      "forever-agent-0.6.1" = self.by-version."forever-agent"."0.6.1";
      "form-data-2.1.2" = self.by-version."form-data"."2.1.2";
      "har-validator-2.0.6" = self.by-version."har-validator"."2.0.6";
      "hawk-3.1.3" = self.by-version."hawk"."3.1.3";
      "http-signature-1.1.1" = self.by-version."http-signature"."1.1.1";
      "is-typedarray-1.0.0" = self.by-version."is-typedarray"."1.0.0";
      "isstream-0.1.2" = self.by-version."isstream"."0.1.2";
      "json-stringify-safe-5.0.1" = self.by-version."json-stringify-safe"."5.0.1";
      "mime-types-2.1.14" = self.by-version."mime-types"."2.1.14";
      "oauth-sign-0.8.2" = self.by-version."oauth-sign"."0.8.2";
      "qs-6.3.0" = self.by-version."qs"."6.3.0";
      "stringstream-0.0.5" = self.by-version."stringstream"."0.0.5";
      "tough-cookie-2.3.2" = self.by-version."tough-cookie"."2.3.2";
      "tunnel-agent-0.4.3" = self.by-version."tunnel-agent"."0.4.3";
      "uuid-3.0.1" = self.by-version."uuid"."3.0.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."rimraf"."2" =
    self.by-version."rimraf"."2.5.4";
  by-version."rimraf"."2.5.4" = self.buildNodePackage {
    name = "rimraf-2.5.4";
    version = "2.5.4";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/rimraf/-/rimraf-2.5.4.tgz";
      name = "rimraf-2.5.4.tgz";
      sha1 = "96800093cbf1a0c86bd95b4625467535c29dfa04";
    };
    deps = {
      "glob-7.1.1" = self.by-version."glob"."7.1.1";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."rimraf"."~2.5.1" =
    self.by-version."rimraf"."2.5.4";
  by-spec."rimraf"."~2.5.4" =
    self.by-version."rimraf"."2.5.4";
  by-spec."semver"."~5.3.0" =
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
  by-spec."set-blocking"."~2.0.0" =
    self.by-version."set-blocking"."2.0.0";
  by-version."set-blocking"."2.0.0" = self.buildNodePackage {
    name = "set-blocking-2.0.0";
    version = "2.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/set-blocking/-/set-blocking-2.0.0.tgz";
      name = "set-blocking-2.0.0.tgz";
      sha1 = "045f9782d011ae9a6803ddd382b24392b3d890f7";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."set-immediate-shim"."^1.0.1" =
    self.by-version."set-immediate-shim"."1.0.1";
  by-version."set-immediate-shim"."1.0.1" = self.buildNodePackage {
    name = "set-immediate-shim-1.0.1";
    version = "1.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/set-immediate-shim/-/set-immediate-shim-1.0.1.tgz";
      name = "set-immediate-shim-1.0.1.tgz";
      sha1 = "4b2b1b27eb808a9f8dcc481a58e5e56f599f3f61";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."signal-exit"."^3.0.0" =
    self.by-version."signal-exit"."3.0.2";
  by-version."signal-exit"."3.0.2" = self.buildNodePackage {
    name = "signal-exit-3.0.2";
    version = "3.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/signal-exit/-/signal-exit-3.0.2.tgz";
      name = "signal-exit-3.0.2.tgz";
      sha1 = "b5fdc08f1287ea1178628e415e25132b73646c6d";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."slash"."^1.0.0" =
    self.by-version."slash"."1.0.0";
  by-version."slash"."1.0.0" = self.buildNodePackage {
    name = "slash-1.0.0";
    version = "1.0.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/slash/-/slash-1.0.0.tgz";
      name = "slash-1.0.0.tgz";
      sha1 = "c41f2f6c39fc16d1cd17ad4b5d896114ae470d55";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
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
  by-spec."source-map"."^0.5.0" =
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
  by-spec."source-map"."^0.5.3" =
    self.by-version."source-map"."0.5.6";
  by-spec."source-map-support"."^0.4.2" =
    self.by-version."source-map-support"."0.4.11";
  by-version."source-map-support"."0.4.11" = self.buildNodePackage {
    name = "source-map-support-0.4.11";
    version = "0.4.11";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/source-map-support/-/source-map-support-0.4.11.tgz";
      name = "source-map-support-0.4.11.tgz";
      sha1 = "647f939978b38535909530885303daf23279f322";
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
  by-spec."sshpk"."^1.7.0" =
    self.by-version."sshpk"."1.10.2";
  by-version."sshpk"."1.10.2" = self.buildNodePackage {
    name = "sshpk-1.10.2";
    version = "1.10.2";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/sshpk/-/sshpk-1.10.2.tgz";
      name = "sshpk-1.10.2.tgz";
      sha1 = "d5a804ce22695515638e798dbe23273de070a5fa";
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
  by-spec."string-width"."^1.0.1" =
    self.by-version."string-width"."1.0.2";
  by-version."string-width"."1.0.2" = self.buildNodePackage {
    name = "string-width-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/string-width/-/string-width-1.0.2.tgz";
      name = "string-width-1.0.2.tgz";
      sha1 = "118bdf5b8cdc51a2a7e70d211e07e2b0b9b107d3";
    };
    deps = {
      "code-point-at-1.1.0" = self.by-version."code-point-at"."1.1.0";
      "is-fullwidth-code-point-1.0.0" = self.by-version."is-fullwidth-code-point"."1.0.0";
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
  by-spec."strip-ansi"."^3.0.1" =
    self.by-version."strip-ansi"."3.0.1";
  by-spec."strip-json-comments"."~1.0.4" =
    self.by-version."strip-json-comments"."1.0.4";
  by-version."strip-json-comments"."1.0.4" = self.buildNodePackage {
    name = "strip-json-comments-1.0.4";
    version = "1.0.4";
    bin = true;
    src = fetchurl {
      url = "https://registry.npmjs.org/strip-json-comments/-/strip-json-comments-1.0.4.tgz";
      name = "strip-json-comments-1.0.4.tgz";
      sha1 = "1e15fbcac97d3ee99bf2d73b4c656b082bbafb91";
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
  by-spec."tar"."~2.2.1" =
    self.by-version."tar"."2.2.1";
  by-version."tar"."2.2.1" = self.buildNodePackage {
    name = "tar-2.2.1";
    version = "2.2.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/tar/-/tar-2.2.1.tgz";
      name = "tar-2.2.1.tgz";
      sha1 = "8e4d2a256c0e2185c6b18ad694aec968b83cb1d1";
    };
    deps = {
      "block-stream-0.0.9" = self.by-version."block-stream"."0.0.9";
      "fstream-1.0.10" = self.by-version."fstream"."1.0.10";
      "inherits-2.0.3" = self.by-version."inherits"."2.0.3";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."tar-pack"."~3.3.0" =
    self.by-version."tar-pack"."3.3.0";
  by-version."tar-pack"."3.3.0" = self.buildNodePackage {
    name = "tar-pack-3.3.0";
    version = "3.3.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/tar-pack/-/tar-pack-3.3.0.tgz";
      name = "tar-pack-3.3.0.tgz";
      sha1 = "30931816418f55afc4d21775afdd6720cee45dae";
    };
    deps = {
      "debug-2.2.0" = self.by-version."debug"."2.2.0";
      "fstream-1.0.10" = self.by-version."fstream"."1.0.10";
      "fstream-ignore-1.0.5" = self.by-version."fstream-ignore"."1.0.5";
      "once-1.3.3" = self.by-version."once"."1.3.3";
      "readable-stream-2.1.5" = self.by-version."readable-stream"."2.1.5";
      "rimraf-2.5.4" = self.by-version."rimraf"."2.5.4";
      "tar-2.2.1" = self.by-version."tar"."2.2.1";
      "uid-number-0.0.6" = self.by-version."uid-number"."0.0.6";
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."to-fast-properties"."^1.0.1" =
    self.by-version."to-fast-properties"."1.0.2";
  by-version."to-fast-properties"."1.0.2" = self.buildNodePackage {
    name = "to-fast-properties-1.0.2";
    version = "1.0.2";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/to-fast-properties/-/to-fast-properties-1.0.2.tgz";
      name = "to-fast-properties-1.0.2.tgz";
      sha1 = "f3f5c0c3ba7299a7ef99427e44633257ade43320";
    };
    deps = {
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
  by-spec."tunnel-agent"."~0.4.1" =
    self.by-version."tunnel-agent"."0.4.3";
  by-version."tunnel-agent"."0.4.3" = self.buildNodePackage {
    name = "tunnel-agent-0.4.3";
    version = "0.4.3";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/tunnel-agent/-/tunnel-agent-0.4.3.tgz";
      name = "tunnel-agent-0.4.3.tgz";
      sha1 = "6373db76909fe570e08d73583365ed828a74eeeb";
    };
    deps = {
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
  by-spec."uid-number"."~0.0.6" =
    self.by-version."uid-number"."0.0.6";
  by-version."uid-number"."0.0.6" = self.buildNodePackage {
    name = "uid-number-0.0.6";
    version = "0.0.6";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/uid-number/-/uid-number-0.0.6.tgz";
      name = "uid-number-0.0.6.tgz";
      sha1 = "0ea10e8035e8eb5b8e4449f06da1c730663baa81";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
  by-spec."user-home"."^1.1.1" =
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
  by-spec."uuid"."^3.0.0" =
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
  by-spec."v8flags"."^2.0.10" =
    self.by-version."v8flags"."2.0.11";
  by-version."v8flags"."2.0.11" = self.buildNodePackage {
    name = "v8flags-2.0.11";
    version = "2.0.11";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/v8flags/-/v8flags-2.0.11.tgz";
      name = "v8flags-2.0.11.tgz";
      sha1 = "bca8f30f0d6d60612cc2c00641e6962d42ae6881";
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
  by-spec."wide-align"."^1.1.0" =
    self.by-version."wide-align"."1.1.0";
  by-version."wide-align"."1.1.0" = self.buildNodePackage {
    name = "wide-align-1.1.0";
    version = "1.1.0";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/wide-align/-/wide-align-1.1.0.tgz";
      name = "wide-align-1.1.0.tgz";
      sha1 = "40edde802a71fea1f070da3e62dcda2e7add96ad";
    };
    deps = {
      "string-width-1.0.2" = self.by-version."string-width"."1.0.2";
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
  by-spec."xtend"."^4.0.0" =
    self.by-version."xtend"."4.0.1";
  by-version."xtend"."4.0.1" = self.buildNodePackage {
    name = "xtend-4.0.1";
    version = "4.0.1";
    bin = false;
    src = fetchurl {
      url = "https://registry.npmjs.org/xtend/-/xtend-4.0.1.tgz";
      name = "xtend-4.0.1.tgz";
      sha1 = "a5c6d532be656e23db820efb943a1f04998d63af";
    };
    deps = {
    };
    optionalDependencies = {
    };
    peerDependencies = [];
    os = [ ];
    cpu = [ ];
  };
}
