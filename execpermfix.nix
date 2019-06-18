{ stdenv, fetchurl, cmake }:

stdenv.mkDerivation rec {
  name = "execpermfix-${version}";
  version = "1.0.7";

  src = fetchurl {
    url = "https://github.com/lpenz/execpermfix/archive/${version}.tar.gz";
    sha256 = "0cd25b5c8585c01329e9a5912cd7b8c57a9edfd7e6f6909e2051076a7238ca99";
  };

  buildInputs = [ cmake ];
}
