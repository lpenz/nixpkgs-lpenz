{
  description = "nixpkgs-lpenz flake";

  inputs.execpermfix = {
    url = github:lpenz/execpermfix?ref=1.0.7;
    flake = false;
  };
  inputs.ogle = {
    url = github:lpenz/ogle?ref=v1.3.4;
    flake = false;
  };

  outputs = { self, nixpkgs, execpermfix, ogle }: {

    packages.x86_64-linux.execpermfix =
      with import nixpkgs { system = "x86_64-linux"; };
      stdenv.mkDerivation rec {
        name = "execpermfix-${version}";
        version = "1.0.7";
        src = execpermfix;
        buildInputs = [ cmake ];
      };

    packages.x86_64-linux.ogle =
      with import nixpkgs { system = "x86_64-linux"; };
      rustPlatform.buildRustPackage rec {
        name = "ogle-${version}";
        version = "v1.3.4";
        src = ogle;
      };

    packages.x86_64-linux.default = self.packages.x86_64-linux.execpermfix;
  };
}
