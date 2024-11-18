#!/bin/sh
pushd ~/.dotfiles
home-manager switch -f ./users/ruben/home.nix
popd
