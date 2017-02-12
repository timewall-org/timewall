{ nixpkgs, nixpkgsPath }:

with nixpkgs;

let
  args = {
    inherit stdenv openssl python2 zlib libuv v8 utillinux http-parser
    pkgconfig runCommand fetchurl which libtool fetchpatch callPackage;

    darwin = null;
    enableNpm = true;
  };

  nodejs = import "${nixpkgsPath}/pkgs/development/web/nodejs/nodejs.nix" args;
in
  stdenv.mkDerivation (nodejs // rec {
    name = "nodejs-7.x-staging-v8-5.5";
    src = fetchurl {
      url = "https://github.com/nodejs/node/archive/52c955bed9e6cb98579541e30136b58a816830b9.tar.gz";
      sha256 = "0r3738nl1h3i4caww7n4vag1svgw2zn9lcykbbnrswwx9ql9fpxc";
    };
    /*src = fetchurl {
      url = "https://github.com/nodejs/node/archive/52c955bed9e6cb98579541e30136b58a816830b9.zip";
      owner = "nodejs";
      repo = "node";
      rev = "52c955bed9e6cb98579541e30136b58a816830b9";
      sha256 = "1a2ks7khpni26636q28q256z61p07ci7dazpcwdmicq7gdh23x88";
    };*/
  })
