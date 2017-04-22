with import ./nix/nixpkgs.nix;
with nixpkgs;

let
  nodejs = nixpkgs.nodejs; #import ./nix/v7-5.5.nix { inherit nixpkgs nixpkgsPath; };
  nodePackages = import "${nixpkgsPath}/pkgs/top-level/node-packages.nix" {
    inherit stdenv pkgs nodejs;
    self = nodePackages;
    generated = callPackage ./nix/node-packages.nix { self = nodePackages; };
  };

  devenv = stdenv.mkDerivation rec {
    name = "timewall";
    buildInputs = with nodePackages; [
      nodejs
#      cassandra-driver
#      uuid
#      source-map-support
#      mocha
#      body-parser
#      typescript
#      cookie-parser
#      express
#      morgan
#      sinon
#      supertest
#      lodash
#      react

      # for generating Nix derivations of NPM packages
#      npm2nix

      # for cassandra client
      jre8 pythonFull
    ];

    env = buildEnv {
      name = "timewall-env";
      paths = buildInputs;
      ignoreCollisions = true;
    };

    unpackPhase = "true";

    installPhase = ''
      ln -s $env $out
    '';

    fixupPhase = "true";
  };
in
  devenv
