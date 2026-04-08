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
  
  ### auto-cpufreq cause my CPU is going to take off like a SpaceX
  services.auto-cpufreq.enable = true;
  services.auto-cpufreq.settings = {
    battery = {
      governor = "powersave";
      turbo = "never";
    };

    charger = {
      governor = "performance";
      turbo = "auto";
    };
  };

  system.stateVersion = "25.11";
}
