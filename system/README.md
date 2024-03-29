# System-level Nix Modules

Separate Nix files can be imported as modules using an import block:
```
imports = [ import1.nix
            import2.nix
            ...
          ];
```

My system-level Nix modules are organized into this directory:
- [./hardware-configuration.nix](hardware-configuration) - Default hardware config generated for my system
- [./app](app) - Necessary system-level configuration to get various apps working
- [./hardware](hardware) - Hardware configurations I may need to use
- [./security](security) - System-level security stuff
- [./style](style) - Stylix setup (system-wide base16 theme generation)
- [./wm](wm) - Necessary system-level configuration to get various window managers, wayland compositors, and/or desktop environments working

** Variables imported from flake.nix
Variables can be imported from [../flake.nix](flake.nix) by setting the =specialArgs= block inside the flake (see [../flake.nix](my flake) for more details).  This allows variables to merely be managed in one place ([../flake.nix](flake.nix)) rather than having to manage them in multiple locations.

I currently import the following variables to the system config:
- `username` - Username
- `hostname` - Hostname for machine
- `timezone` - Timezone for machine
- `locale` - Locale for machine
- `theme` - base16 theme stored in ../themes to be used
- `backgroundUrl` - Direct link to background wallpaper (used for login screen)
- `backgroundSha256` - Checksum for background image used when downloading
