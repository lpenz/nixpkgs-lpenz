{ rustPlatform, fetchFromGitHub }:

rustPlatform.buildRustPackage rec {
  name = "ogle";
  version = "1.0.0";

  src = fetchFromGitHub {
    owner = "lpenz";
    repo = "ogle";
    rev = "${version}";
    sha256 = "161p4xq1mggzjx4fy3yz36mdwj47xgmy0rifvbp5bd67x5vy7z2b";
  };

  cargoSha256 = "1nnykfs14s63xvgfyb0kaa7a9ja6i3fb1v70l6f1s21a21qkb2v9";
}
