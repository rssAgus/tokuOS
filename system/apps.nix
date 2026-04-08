{ pkgs, ... }:

{

  ## In case I need to run binaries, I'll leave this here...
  programs.nix-ld.enable = true;
  programs.nix-ld.libraries = with pkgs; [
    stdenv.cc.cc
    zlib
    fuse3
    openssl
    curl
    expat
    libGL
    xorg.libX11
  ];

  ### Had to do this bc some apps are forcing x11 to run
  environment.variables.NIXOS_OZONE_WL = "1";

  environment.systemPackages = with pkgs; [
    vim
    wget
    git
    btop
    fastfetch
    pciutils
    usbutils
    rustup      
    go          
    gcc         
    nodejs      
    python3
    firefox
    vlc
    gh
    openvpn
    openfortivpn
    zapzap
    vesktop
    gnome-tweaks
    tree
    bibata-cursors
    obsidian
    remmina
    whois
    qemu_kvm
    libvirt
    bridge-utils
    virt-viewer
    OVMF
    noctalia-shell
    alacritty
    vscodium
    swaylock
  ];

  ### VIRTUALIZATION ####
    programs.dconf.enable = true;
    virtualisation.libvirtd.enable = true;
    programs.virt-manager.enable = true;
  ### VIRTUALIZATION ####

  ### STARSHIP
  programs.starship.enable = true;

  ### FLATPAK (btw this is just for spotify, it doesn't run on niri using nixpkgs)
  services.flatpak.enable = true;

  ### DOCKER
  virtualisation.docker = {
    enable = true;
  };


  nixpkgs.config.allowUnfree = true;
}
