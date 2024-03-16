#+title: NixOS WSL Setup and Config
#+author: Nico Swan

[[https://github.com/nicoswan/nix-config-wsl][Repo Link (GitHub)]]

** What is this repository?
These are my dotfiles (configuration files) for NixOS on WSL setup .

This is my WSL profile, which is a minimal installation I use on Windows underneath WSL. 

# Prerequisites
This requires NixOS-WSL to be installed.

The nixos-wsl directory is taken directly from NixOS-WSL and merely patched slightly to allow it to run with the unstable channel of nixpkgs.

### Install NixOS
https://nixos.wiki/wiki/WSL

1) Update WSL
```sh
wsl --update
```
2) Install with windows command prompt
```sh
wsl --import NixOS .\NixOS\ .\Downloads\nixos-wsl.tar.gz --version 2
```
3) Set as default
```sh
wsl -s NixOS
```

4) Start 
```sh
wsl -d NixOS
```

5) Update NixOS
```sh
sudo nix-channel --update
sudo nixos-rebuild switch
```


