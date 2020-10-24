{ rustPlatform, fetchFromGitHub }:

rustPlatform.buildRustPackage rec {
  name = "ogle";
  version = "1.2.0";

  src = fetchFromGitHub {
    owner = "lpenz";
    repo = "ogle";
    rev = "${version}";
    sha256 = "sha256:07zklginamvm88g81z105faa8fjpgz8p1aprw7i9wz8681w9wpgr";
  };

  cargoSha256 = "sha256:0ml41ln52rp8v8hphpp6f1fnrf96r1bwm1hbgfgc65kfixxf6x42";
}
