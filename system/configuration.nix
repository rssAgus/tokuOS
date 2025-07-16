{ config, pkgs, ... }:

{
  imports = [ # My imports
    ./hardware-configuration.nix
    ../pkgs/etc.nix
	  ../pkgs/packs.nix
    ./bash.nix
    ./fonts.nix
    ./language.nix
    ./nix-features.nix
    ./de.nix
  ];

  # User
  users.users.agustin = {
    isNormalUser = true;
    description = "agustin";
    extraGroups = [ "networkmanager" "wheel" "docker" ];
    packages = with pkgs; [];
  };  

  # Hostname
  networking.hostName = "nixos"; # Define your hostname.
  
  # Network Manager
  networking.networkmanager.enable = true;
  
  # Bootloader
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;


  # TZ
  time.timeZone = "America/Argentina/Buenos_Aires";

  # Sys Version
  system.stateVersion = "25.05"; # Did you read the comment?

}
