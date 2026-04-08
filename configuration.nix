{ config, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./system/bash.nix
    ./system/de.nix
    ./system/fonts.nix
    ./system/apps.nix
  ];

  ### Bootloader conf
  boot.loader.grub.enable = true;
  boot.loader.grub.device = "nodev";
  boot.loader.grub.efiSupport = true;
  boot.loader.efi.canTouchEfiVariables = true;
  
  ### My user with the needed groups
  users.users.agus = {
  isNormalUser = true;
  extraGroups = [ "wheel" "networkmanager" "docker" "libvirtd" ];
  };
  
  ### BT for Noctalia
  hardware.bluetooth.enable = true;

  ### Now my hostname is tokuOS!
  networking.hostName = "tokuOS";
  networking.networkmanager.enable = true;

  ### SSH Open to make things with QEMU VM's
  services.openssh.enable = true;
  services.openssh.settings.PasswordAuthentication = true;
  
  ### PPD for Noctalia
  services.power-profiles-daemon.enable = true;

  system.stateVersion = "25.11";
}
