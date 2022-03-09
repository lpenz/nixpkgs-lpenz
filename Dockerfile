FROM nixpkgs/nix

RUN set -e -x -o pipefail; \
    nix-channel --add https://nixos.org/channels/nixpkgs-unstable nixpkgs; \
    nix-channel --update; \
    nix-env -iA nixpkgs.bash nixpkgs.gnutar nixpkgs.findutils; \
    mkdir -p "$HOME/.config/nix/"; \
    echo 'substituters = https://cache.nixos.org' >> "$HOME/.config/nix/nix.conf"; \
    echo 'trusted-public-keys = cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY= lpenz.org:jYDkTN/2qS96NxFnJpuWkNdVfNaWzaA5pmcg4MyXa2g=' >> "$HOME/.config/nix/nix.conf"; \
    echo 'extra-experimental-features = nix-command flakes' >> "$HOME/.config/nix/nix.conf"; \
    :

CMD set -e -x; \
    ./channel-build _output
