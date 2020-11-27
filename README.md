[![CI](https://github.com/lpenz/nixpkgs-lpenz/workflows/CI/badge.svg)](https://github.com/lpenz/nixpkgs-lpenz/actions)

nixpkgs-lpenz
=============

## About

This is my overlay/extension of nixpkgs, with a binary cache. It's
built from [this](https://github.com/lpenz/nixpkgs-lpenz/) github
repository by using [travis-ci](https://travis-ci.com) and it's
deployed as a [github pages](https://pages.github.com/).

And for now, it's mostly an example of how to do just that. More
details [here](http://www.lpenz.org/articles/nixchannel/).


## Installation

To use it, add the channel and update it:

~~~[.sh]
nix-channel --add http://www.lpenz.org/nixpkgs-lpenz/
nix-channel --update
~~~

To use the binary cache, you have to add its URL and public key as a
substituter in `$HOME/.config/nix/nix.conf`:

~~~[.conf]
substituters = https://cache.nixos.org https://www.lpenz.org/nixpkgs-lpenz/cache
binary-cache-public-keys = cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY= lpenz.org:jYDkTN/2qS96NxFnJpuWkNdVfNaWzaA5pmcg4MyXa2g=
~~~

You can now test it by installing [execpermfix](http://github.com/lpenz/execpermfix):

~~~[.sh]
nix-env -iA nixpkgs-lpenz.execpermfix
~~~
