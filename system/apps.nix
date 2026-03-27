{ pkgs, ... }:

{
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
    # Herramientas de sistema
    vim
    wget
    git
    htop
    fastfetch
    pciutils
    usbutils

    rustup      # Para Rust
    go          # Para Go
    gcc         # Para C
    nodejs      # Para JavaScript
    python3     # Para Python
    
    firefox
    vlc
  ];

  nixpkgs.config.allowUnfree = true;
}