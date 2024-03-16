These are just some simple install notes for myself (in-case I have to reinstall unexpectedly). You could also use these to try out my config in a VM.

## Automated Install Script (Experimental)
### Install Directly From Git
I wrote a quick automated install script at [./install.sh](install.sh). It essentially just runs [Manual Install Procedure](#the-manual-install-steps) and additionally hardens the security of the system-level (root configuration) files using [[./harden.sh][harden.sh]].

I'll eventually™ add the ability to supply arguments to this script as well.

The quickest way to install is running the install script directly from the remote git repo using =nix run=, which is essentially just one of the following:

# Or install from github
```
nix run https://github.com/nicoswan/nix-config-wsl
```

The script will ask for sudo permissions at certain points, /but you should not run the script as root/.

If the above `nix run` command gives you an error, odds are you either don't have `git` installed, or you haven't enabled the experimental features in your Nix config (`nix-command` and `flakes`). To get the command to install properly, you can first enter a shell with `git` available using:
```sh
nix-shell -p git
```
and then running:
```sh
nix run --experimental-features 'nix-command flakes' github:nicoswan/nix-config-wsl
```

And if you want a single copy-paste solution:
```sh
nix-shell -p git --command "nix run --experimental-features 'nix-command flakes' github:nicoswan/nix-config-wsl"
```

At a certain point in the install script it will open `vi` (or whatever your $EDITOR is set to) and ask you to edit the `flake.nix`. You can edit as much or as little of the config variables as you like, and it will continue the install after you exit the editor.

Note: If you're installing this to a VM, Hyprland won't work unless 3D acceleration is enabled.


### Automatic Install Script Limitations
At this time, this only works on an existing NixOS install. It also only works if the dotfiles are cloned into `~/.dotfiles`. 

## Manual Install Procedure
If you instead want to install this manually to see all the steps (kind of like an Arch install before the archinstall script existed), you can follow this following procedure:

### Clone Repo and Modify Configuration
Start by cloning the repo:
```sh
git clone https://github.com/nicoswan/nix-config-wsl.git ~/.dotfiles
```

To get the hardware configuration on a new system, either copy from `/etc/nixos/hardware-configuration.nix` or run:
```sh
sudo nixos-generate-config --show-hardware-config > ~/.dotfiles/system/hardware-configuration.nix
```

Also, if you have a differently named user account than my default (`nicoswan`), you /must/ update the following lines in the let binding near the top of the [./flake.nix](flake.nix):
```nix
...
let
  ...
  # ----- USER SETTINGS ----- #
  username = "YOURUSERNAME"; # username
  name = "YOURNAME"; # name/identifier
...
```

There are many more config options there that you may also want to change as well.


### Rebuild and Switch System Config
Once the variables are set, then switch into the system configuration by running:
```sh
sudo nixos-rebuild switch --flake ~/.dotfiles#system
```

### Intall and Switch Home Manager Config
Home manager can be installed and the configuration activated with:
```sh
nix run home-manager/master -- switch --flake ~/.dotfiles#user
```

## FAQ
### `home-manager switch --flake .#user` Command Fails
If it fails with something to the effect of "could not download {some image file}" then that just means that one of my themes is having trouble downloading the background image. To conserve on space in the repo, my themes download the relevant wallpapers directly from their source, but that also means that if the link is broken,`=home-manager switch` fails.

I have included a script in the [./themes](themes directory) named [./themes/background-test.sh](background-test.sh) which performs a rough test on every theme background url, reporting which are broken.

If you're having this error, navigate to the [./flake.nix](flake.nix) and select any theme with a good background wallpaper link. As long as it is able to download the new wallpaper, it should be able to build.

### Do I have to put the configuration files in `~/.dotfiles`?
No. You can put them in literally any directory you want. I just prefer to use `~/.dotfiles` as a convention. If you change the directory, do keep in mind that the above scripts must be modified, replacing `~/.dotfiles` with whatever directory you want to install them to. Also, you may want to modify the `dotfilesDir` variable in `flake.nix`.

### So I cloned these dotfiles into ~/.dotfiles, and now there are system-level files owned by my user account.. HOW IS THIS SECURE?!
If you're worried about someone modifying your system-level (root configuration) files as your unpriveleged user, see [./harden.sh](harden.sh).

### I installed this to a VM and when I log in, it crashes and sends me back to the login manager (SDDM)?
Enable 3D acceleration for your virtual machine. Hyprland doesn't work without it.
