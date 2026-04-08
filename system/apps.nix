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
    spotify
    discord
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
    swaylock
    fuzzel
    vscodium
  ];

  ### VIRTUALIZATION ####
    programs.dconf.enable = true;
    virtualisation.libvirtd.enable = true;
    programs.virt-manager.enable = true;
  ### VIRTUALIZATION ####

  ### STARSHIP
  programs.starship.enable = true;

  ### DOCKER
  virtualisation.docker = {
    enable = true;
  };


  nixpkgs.config.allowUnfree = true;
}
