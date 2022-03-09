{ system ? builtins.currentSystem }:

let
  pkgs = import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/530a53dcbc9437363471167a5e4762c5fcfa34a1.tar.gz") { inherit system; };

  callPackage = pkgs.lib.callPackageWith (pkgs // self);

  self = {
    execpermfix = callPackage ./execpermfix.nix {};
    ogle = callPackage ./ogle.nix {};
  };
in
self
