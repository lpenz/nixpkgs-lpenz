{ stdenv, fetchFromGitHub, cmake }:

stdenv.mkDerivation rec {
  name = "execpermfix-${version}";
  version = "1.0.7";

  src = fetchFromGitHub {
    owner = "lpenz";
    repo = "execpermfix";
    rev = "${version}";
    sha256 = "1bgg2dknqyx6bcrp4vxcgpq5wszlbqlm0adlw4057x0rr2lzydhh";
  };

  buildInputs = [ cmake ];
}
