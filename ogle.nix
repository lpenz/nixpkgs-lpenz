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

  cargoSha256 = "sha256:0qpda0krkk1hmv8xspij1px56ghn05ak15a3njqcv33zj7qlsba7";
}
