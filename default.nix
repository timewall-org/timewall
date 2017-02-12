with import ./nix/nixpkgs.nix;
with nixpkgs;

let
  nodejs = import ./nix/v7-5.5.nix { inherit nixpkgs nixpkgsPath; };
  nodePackages = import "${nixpkgsPath}/pkgs/top-level/node-packages.nix" {
    inherit stdenv pkgs nodejs;
    self = nodePackages;
    generated = callPackage ./nix/node-packages.nix { self = nodePackages; };
  };

  app = stdenv.mkDerivation rec {
    name = "dtime";
    buildInputs = with nodePackages; [
      nodejs
      babel-cli
      babel-preset-latest
      babel-preset-react
      npm2nix
    ];
  };
in
  app
