#!/bin/sh

# Automated script to install my dotfiles

echo "Retrieving configuration from github"
GIT_CMD="git clone https://github.com/nicoswan/nix-config-wsl.git ~/.dotfiles"
nix-shell -p git --command "$GIT_CMD"

# Generate hardware config for new system
sudo nixos-generate-config --show-hardware-config > ~/.dotfiles/system/hardware-configuration.nix

# Patch flake.nix with different username/name and remove email by default
sed -i "0,/nicoswan/s//$(whoami)/" ~/.dotfiles/flake.nix
sed -i "0,/nicoswan/s//$(getent passwd $(whoami) | cut -d ':' -f 5 | cut -d ',' -f 1)/" ~/.dotfiles/flake.nix
sed -i "s/nicoswan@gmail.com//" ~/.dotfiles/flake.nix

# Open up editor to manually edit flake.nix before install
if [ -z "$EDITOR" ]; then
    EDITOR=vi;
fi
$EDITOR ~/.dotfiles/flake.nix;

# Rebuild system
sudo nixos-rebuild switch --flake ~/.dotfiles#system;

# Install and build home-manager configuration
nix run home-manager/master --extra-experimental-features nix-command --extra-experimental-features flakes -- switch --flake ~/.dotfiles#user;

# Permissions for files that should be owned by root
sudo ~/.dotfiles/harden.sh ~/.dotfiles;
