{ system ? builtins.currentSystem }:

let
  pkgs = import <nixpkgs> { inherit system; };

  callPackage = pkgs.lib.callPackageWith (pkgs // self);

  self = {
    execpermfix = callPackage ./execpermfix.nix {};
    ogle = callPackage ./ogle.nix {};
  };
in
self
