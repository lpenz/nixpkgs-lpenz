FROM nixorg/nix

RUN set -e -x; echo 'http2 = false' >> /etc/nix/nix.conf

RUN set -e -x; \
    nix-channel --add https://nixos.org/channels/nixpkgs-unstable nixpkgs; \
    nix-channel --update

RUN set -e -x; nix-env -iA nixpkgs.bash nixpkgs.gnutar

ADD entrypoint /

ENTRYPOINT ["/entrypoint"]
