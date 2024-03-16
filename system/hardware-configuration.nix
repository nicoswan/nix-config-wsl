# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, modulesPath, ... }:

{
  imports = [ ];

  boot.initrd.availableKernelModules = [ "virtio_pci" ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ "kvm-intel" ];
  boot.extraModulePackages = [ ];

  fileSystems."/mnt/wsl" =
    { device = "none";
      fsType = "tmpfs";
    };

  fileSystems."/mnt/wsl/docker-desktop-data/isocache" =
    { device = "/dev/disk/by-uuid/3255683f-53a2-4fdf-91cf-b4c1041e2a62";
      fsType = "ext4";
    };

  fileSystems."/mnt/wsl/docker-desktop-data/version-pack-data" =
    { device = "/mnt/wsl/docker-desktop-data/isocache/version-pack-data";
      fsType = "none";
      options = [ "bind" ];
    };

  fileSystems."/mnt/wsl/docker-desktop-data/version-pack-data/community/containerd" =
    { device = "containerd";
      fsType = "overlay";
    };

  fileSystems."/mnt/wsl/docker-desktop-data/version-pack-data/community/mount-services-cache/entries/services.raw/e2a53fa2aa4b51161f559e9973cfd12d0f96b0396a27a64a5e3f2555a89af368.mnt" =
    { device = "/mount-services-cache/entries/services.raw/e2a53fa2aa4b51161f559e9973cfd12d0f96b0396a27a64a5e3f2555a89af368";
      fsType = "iso9660";
      options = [ "loop" ];
    };

  fileSystems."/mnt/wsl/docker-desktop-data/version-pack-data/community/mount-services-cache/entries/services.raw/e2a53fa2aa4b51161f559e9973cfd12d0f96b0396a27a64a5e3f2555a89af368.mnt/containers/services/01-docker/tmp" =
    { device = "tmpfs";
      fsType = "tmpfs";
    };

  fileSystems."/mnt/wsl/docker-desktop-data/version-pack-data/community/mount-services-cache/entries/services.raw/e2a53fa2aa4b51161f559e9973cfd12d0f96b0396a27a64a5e3f2555a89af368.mnt/containers/services/01-docker/rootfs" =
    { device = "overlay";
      fsType = "overlay";
    };

  fileSystems."/mnt/wsl/docker-desktop-data/version-pack-data/community/mount-services-cache/entries/services.raw/e2a53fa2aa4b51161f559e9973cfd12d0f96b0396a27a64a5e3f2555a89af368.mnt/containers/services/container-filesystem/tmp" =
    { device = "tmpfs";
      fsType = "tmpfs";
    };

  fileSystems."/mnt/wsl/docker-desktop-data/version-pack-data/community/mount-services-cache/entries/services.raw/e2a53fa2aa4b51161f559e9973cfd12d0f96b0396a27a64a5e3f2555a89af368.mnt/containers/services/container-filesystem/rootfs" =
    { device = "overlay";
      fsType = "overlay";
    };

  fileSystems."/mnt/wsl/docker-desktop-data/version-pack-data/community/mount-services-cache/entries/services.raw/e2a53fa2aa4b51161f559e9973cfd12d0f96b0396a27a64a5e3f2555a89af368.mnt/containers/services/devenv-service/tmp" =
    { device = "tmpfs";
      fsType = "tmpfs";
    };

  fileSystems."/mnt/wsl/docker-desktop-data/version-pack-data/community/mount-services-cache/entries/services.raw/e2a53fa2aa4b51161f559e9973cfd12d0f96b0396a27a64a5e3f2555a89af368.mnt/containers/services/devenv-service/rootfs" =
    { device = "overlay";
      fsType = "overlay";
    };

  fileSystems."/mnt/wsl/docker-desktop-data/version-pack-data/community/mount-services-cache/entries/services.raw/e2a53fa2aa4b51161f559e9973cfd12d0f96b0396a27a64a5e3f2555a89af368.mnt/containers/services/diagnosticsd/tmp" =
    { device = "tmpfs";
      fsType = "tmpfs";
    };

  fileSystems."/mnt/wsl/docker-desktop-data/version-pack-data/community/mount-services-cache/entries/services.raw/e2a53fa2aa4b51161f559e9973cfd12d0f96b0396a27a64a5e3f2555a89af368.mnt/containers/services/diagnosticsd/rootfs" =
    { device = "overlay";
      fsType = "overlay";
    };

  fileSystems."/mnt/wsl/docker-desktop-data/version-pack-data/community/mount-services-cache/entries/services.raw/e2a53fa2aa4b51161f559e9973cfd12d0f96b0396a27a64a5e3f2555a89af368.mnt/containers/services/oom-tracer/tmp" =
    { device = "tmpfs";
      fsType = "tmpfs";
    };

  fileSystems."/mnt/wsl/docker-desktop-data/version-pack-data/community/mount-services-cache/entries/services.raw/e2a53fa2aa4b51161f559e9973cfd12d0f96b0396a27a64a5e3f2555a89af368.mnt/containers/services/oom-tracer/rootfs" =
    { device = "overlay";
      fsType = "overlay";
    };

  fileSystems."/mnt/wsl/docker-desktop-data/version-pack-data/community/mount-services-cache/entries/services.raw/e2a53fa2aa4b51161f559e9973cfd12d0f96b0396a27a64a5e3f2555a89af368.mnt/containers/services/sntpc/tmp" =
    { device = "tmpfs";
      fsType = "tmpfs";
    };

  fileSystems."/mnt/wsl/docker-desktop-data/version-pack-data/community/mount-services-cache/entries/services.raw/e2a53fa2aa4b51161f559e9973cfd12d0f96b0396a27a64a5e3f2555a89af368.mnt/containers/services/sntpc/rootfs" =
    { device = "overlay";
      fsType = "overlay";
    };

  fileSystems."/mnt/wsl/docker-desktop-data/version-pack-data/community/mount-services-cache/entries/services.raw/e2a53fa2aa4b51161f559e9973cfd12d0f96b0396a27a64a5e3f2555a89af368.mnt/containers/services/socks/tmp" =
    { device = "tmpfs";
      fsType = "tmpfs";
    };

  fileSystems."/mnt/wsl/docker-desktop-data/version-pack-data/community/mount-services-cache/entries/services.raw/e2a53fa2aa4b51161f559e9973cfd12d0f96b0396a27a64a5e3f2555a89af368.mnt/containers/services/socks/rootfs" =
    { device = "overlay";
      fsType = "overlay";
    };

  fileSystems."/mnt/wsl/docker-desktop-data/version-pack-data/community/mount-services-cache/entries/services.raw/e2a53fa2aa4b51161f559e9973cfd12d0f96b0396a27a64a5e3f2555a89af368.mnt/containers/services/stats/tmp" =
    { device = "tmpfs";
      fsType = "tmpfs";
    };

  fileSystems."/mnt/wsl/docker-desktop-data/version-pack-data/community/mount-services-cache/entries/services.raw/e2a53fa2aa4b51161f559e9973cfd12d0f96b0396a27a64a5e3f2555a89af368.mnt/containers/services/stats/rootfs" =
    { device = "overlay";
      fsType = "overlay";
    };

  fileSystems."/mnt/wsl/docker-desktop-data/version-pack-data/community/mount-services-cache/entries/services.raw/e2a53fa2aa4b51161f559e9973cfd12d0f96b0396a27a64a5e3f2555a89af368.mnt/containers/services/trim-after-delete/tmp" =
    { device = "tmpfs";
      fsType = "tmpfs";
    };

  fileSystems."/mnt/wsl/docker-desktop-data/version-pack-data/community/mount-services-cache/entries/services.raw/e2a53fa2aa4b51161f559e9973cfd12d0f96b0396a27a64a5e3f2555a89af368.mnt/containers/services/trim-after-delete/rootfs" =
    { device = "overlay";
      fsType = "overlay";
    };

  fileSystems."/mnt/wsl/docker-desktop-data/version-pack-data/community/mount-services-cache/entries/services.raw/e2a53fa2aa4b51161f559e9973cfd12d0f96b0396a27a64a5e3f2555a89af368.mnt/containers/services/volume-contents/tmp" =
    { device = "tmpfs";
      fsType = "tmpfs";
    };

  fileSystems."/mnt/wsl/docker-desktop-data/version-pack-data/community/mount-services-cache/entries/services.raw/e2a53fa2aa4b51161f559e9973cfd12d0f96b0396a27a64a5e3f2555a89af368.mnt/containers/services/volume-contents/rootfs" =
    { device = "overlay";
      fsType = "overlay";
    };

  fileSystems."/mnt/wsl/docker-desktop-data/version-pack-data/community/mount-services-cache/entries/services.raw/e2a53fa2aa4b51161f559e9973cfd12d0f96b0396a27a64a5e3f2555a89af368.mnt/containers/services/vpnkit-forwarder/tmp" =
    { device = "tmpfs";
      fsType = "tmpfs";
    };

  fileSystems."/mnt/wsl/docker-desktop-data/version-pack-data/community/mount-services-cache/entries/services.raw/e2a53fa2aa4b51161f559e9973cfd12d0f96b0396a27a64a5e3f2555a89af368.mnt/containers/services/vpnkit-forwarder/rootfs" =
    { device = "overlay";
      fsType = "overlay";
    };

  fileSystems."/mnt/wsl/docker-desktop-data/version-pack-data/community/wasm/runtimes" =
    { device = "/mnt/wsl/docker-desktop-data/isocache/version-pack-data/community/wasm/runtimes";
      fsType = "none";
      options = [ "bind" ];
    };

  fileSystems."/mnt/wsl/docker-desktop/shared-sockets/guest-services" =
    { device = "none";
      fsType = "tmpfs";
    };

  fileSystems."/mnt/wsl/docker-desktop/shared-sockets/host-services" =
    { device = "/mnt/wsl/docker-desktop/shared-sockets/guest-services/host-services";
      fsType = "none";
      options = [ "bind" ];
    };

  fileSystems."/mnt/wsl/docker-desktop/cli-tools" =
    { device = "/mnt/host/wsl/docker-desktop-data/isocache/entries/docker-wsl-cli.iso/aa1b5f621045b7603fa62577f38d79b31421924a5cb04706e2882fccef41457e";
      fsType = "iso9660";
      options = [ "loop" ];
    };

  fileSystems."/usr/lib/wsl/drivers" =
    { device = "none";
      fsType = "9p";
    };

  fileSystems."/lib/modules" =
    { device = "none";
      fsType = "tmpfs";
    };

  fileSystems."/lib/modules/5.15.146.1-microsoft-standard-WSL2" =
    { device = "none";
      fsType = "overlay";
    };

  fileSystems."/" =
    { device = "/dev/disk/by-uuid/6d619826-6878-4391-a046-657652bbd123";
      fsType = "ext4";
    };

  fileSystems."/mnt/wslg" =
    { device = "none";
      fsType = "tmpfs";
    };

  fileSystems."/mnt/wslg/distro" =
    { device = "";
      fsType = "none";
      options = [ "bind" ];
    };

  fileSystems."/usr/lib/wsl/lib" =
    { device = "none";
      fsType = "overlay";
    };

  fileSystems."/mnt/wslg/.X11-unix" =
    { device = "/mnt/wslg/.X11-unix";
      fsType = "none";
      options = [ "bind" ];
    };

  fileSystems."/mnt/wslg/doc" =
    { device = "none";
      fsType = "overlay";
    };

  fileSystems."/mnt/c" =
    { device = "C:\134";
      fsType = "9p";
    };

  swapDevices =
    [ { device = "/dev/disk/by-uuid/04256421-23db-424a-b3ac-7aedb23ea2fc"; }
    ];

  # Enables DHCP on each ethernet and wireless interface. In case of scripted networking
  # (the default) this is the recommended approach. When using systemd-networkd it's
  # still possible to use this option, but it's recommended to use it in conjunction
  # with explicit per-interface declarations with `networking.interfaces.<interface>.useDHCP`.
  networking.useDHCP = lib.mkDefault true;
  # networking.interfaces.eth0.useDHCP = lib.mkDefault true;

  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
}
