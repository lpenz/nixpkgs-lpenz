{ rustPlatform, fetchFromGitHub }:

rustPlatform.buildRustPackage rec {
  name = "ogle-${version}";
  version = "v1.3.4";

  src = fetchFromGitHub {
    owner = "lpenz";
    repo = "ogle";
    rev = "${version}";
    sha256 = "sha256:1jw51h9ic9y6m78qlbhwznv14dd4v8gx1f9pv6gvy57hva6xjh81";
  };

  cargoSha256 = "sha256:07mvy5yd8q59ml6mvm1fn10d9dvhw5p1yv9l26z6yxdikfdz3dlm";
}
