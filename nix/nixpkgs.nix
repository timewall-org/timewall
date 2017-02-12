let
  rev = "6651c72df1c4c47d36e67fe59dcf3c50e75c5383";
in rec {
  nixpkgsPath = builtins.fetchTarball "https://github.com/NixOS/nixpkgs/tarball/6651c72df1c4c47d36e67fe59dcf3c50e75c5383";
  nixpkgs = import nixpkgsPath {};
}
