{ rustPlatform, fetchFromGitHub }:

rustPlatform.buildRustPackage rec {
  name = "ogle";
  version = "1.3.0";

  src = fetchFromGitHub {
    owner = "lpenz";
    repo = "ogle";
    rev = "${version}";
    sha256 = "sha256:0jfw96d7w6zqjs5bd2706yw7xi7c74agkmy320hr5ygyb9qhs372";
  };

  cargoSha256 = "sha256:0glic4z12ahajps51z7rsslgk6d7zahjnci1sg38cwjypxcz7yc6";
}
