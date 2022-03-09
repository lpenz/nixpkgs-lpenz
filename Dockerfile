FROM nixpkgs/nix

RUN set -e -x; \
    nix-channel --add https://nixos.org/channels/nixpkgs-unstable nixpkgs; \
    nix-channel --update

RUN set -e -x; nix-env -iA nixpkgs.bash nixpkgs.gnutar

CMD set -e -x; ./channel-build _output
