# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports = [ # Include the results of the hardware scan.
    ./hardware-configuration.nix
    ../pkgs/etc.nix
	  ../pkgs/packs.nix
    ./bash.nix
    ./fonts.nix
    ./language.nix
    ./nix-features.nix
    ./de.nix
  ];


  # Bootloader
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;


  # Hostname
  networking.hostName = "nixos"; # Define your hostname.

  # Network Manager
  networking.networkmanager.enable = true;

  # TZ
  time.timeZone = "America/Argentina/Buenos_Aires";

  # User
  users.users.agustin = {
    isNormalUser = true;
    description = "agustin";
    extraGroups = [ "networkmanager" "wheel" "docker" ];
    packages = with pkgs; [];
  };  

  system.stateVersion = "25.05"; # Did you read the comment?

}
