{ rustPlatform, fetchFromGitHub }:

rustPlatform.buildRustPackage rec {
  name = "ogle";
  version = "1.1.0";

  src = fetchFromGitHub {
    owner = "lpenz";
    repo = "ogle";
    rev = "${version}";
    sha256 = "sha256:1kz6krgzjpr1q6xv35c9ahnxw2xhmzw1qx4sw2a9fy12768wlc4n";
  };

  cargoSha256 = "sha256:1z4p1wbv0nnvb90drzjs551dvjw3hdd0wjqr8aff98iy7aiak1py";
}
