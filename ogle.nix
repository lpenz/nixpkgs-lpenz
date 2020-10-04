{ rustPlatform, fetchFromGitHub }:

rustPlatform.buildRustPackage rec {
  name = "ogle";
  version = "1.0.1";

  src = fetchFromGitHub {
    owner = "lpenz";
    repo = "ogle";
    rev = "${version}";
    sha256 = "1k3jpfcfvr55qqyj0r0phx284ran6cha2yqg2apz56rn196s2afz";
  };

  cargoSha256 = "0xd043nqjnq1in0r7pyfags9im409rk7777gdhi718kbpnca48yc";
}
