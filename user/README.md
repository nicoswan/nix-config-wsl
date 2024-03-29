# User-level Nix Modules

Separate Nix files can be imported as modules using an import block:
```
imports = [ import1.nix
            import2.nix
            ...
          ];
```

My user-level Nix modules are organized into this directory:
- [./app](app) - Apps or collections of apps bundled with my configs
  - [./app/browser](browser) - Used to set default browser
  - [./app/dmenu-scripts](dmenu-scripts)
  - [./app/doom-emacs](doom-emacs)
  - [./app/flatpak](flatpak) - Installs flatpak as a utility (flatpaks must be installed manually)
  - [./app/games](games) - Gaming setup
  - [./app/git](git)
  - [./app/keepass](keepass)
  - [./app/ranger](ranger)
  - [./app/terminal](terminal) - Configuration for terminal emulators
  - [./app/virtualization](virtualization) - Virtualization and compatability layers
- [./bin](bin) - My own scripts
  - [./bin/phoenix.nix](phoenix) - My nix command wrapper
- [./lang](lang) - Various bundled programming languages
  - I will probably get rid of this in favor of a shell.nix for every project, once I learn how that works
- [./pkgs](pkgs) - "Package builds" for packages not in the Nix repositories
  - [./pkgs/pokemon-colorscripts.nix](pokemon-colorscripts)
  - [./pkgs/rogauracore.nix](rogauracore) - not working yet
  - [./pkgs/ytsub.nix](ytsub)
- [./shell](shell) - My default bash and zsh configs
  - [./shell/sh.nix](sh) - bash and zsh configs
  - [./shell/cli-collection.nix](cli-collection) - Curated useful CLI utilities
- [./style](style) - Stylix setup (system-wide base16 theme generation)
- [./wm](wm) - Window manager, compositor, wayland compositor, and/or desktop environment setups
  - [./wm/xmonad](xmonad)
  - [./wm/picom](picom)

## Variables imported from flake.nix
Variables can be imported from [../flake.nix](flake.nix) by setting the `extraSpecialArgs` block inside the flake (see [../flake.nix](my flake) for more details).  This allows variables to merely be managed in one place ([../flake.nix](flake.nix)) rather than having to manage them in multiple locations.

I currently import the following variables to the system config:
- `username` - Username
- `hostname` - Hostname for machine
- `myHomeDir` - Absolute path to home directory derived from =username=
- `email` - Email
- `dotfilesDir` - Path to my dotfiles directory on the system
- `theme` - base16 theme stored in ../themes to be used
- `themePolarity` - whether theme is =light= or =dark=
- `backgroundUrl` - Direct link to background wallpaper (used for login screen)
- `backgroundSha256` - Checksum for background image used when downloading
