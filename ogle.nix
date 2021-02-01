{ rustPlatform, fetchFromGitHub }:

rustPlatform.buildRustPackage rec {
  name = "ogle-${version}";
  version = "1.3.1";

  src = fetchFromGitHub {
    owner = "lpenz";
    repo = "ogle";
    rev = "${version}";
    sha256 = "sha256:0lwv4d683dzc8gc70ms0532rs17fxy87a5xcs0v9bq7ghypazcjv";
  };

  cargoSha256 = "sha256:0w1kx4h9qmbj9jy619q9bf1fhka31mh0w46k5i96b9bqfwk9qhii";
}
