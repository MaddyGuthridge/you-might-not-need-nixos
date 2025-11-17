#!/usr/bin/env bash
# rebuild.sh
# Rebuild NixOS from this configuration
set -euo pipefail

sudo cp -r ./configuration.nix activities environments /etc/nixos
sudo nixos-rebuild switch --show-trace
