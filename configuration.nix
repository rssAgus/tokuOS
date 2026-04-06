{ config, pkgs, ... }:

{
  imports = [
#    ./hardware-configuration.nix || Bruh how did I forgot to comment this
    ./system/bash.nix
    ./system/de.nix
#    ./system/fonts.nix || Someday I'll add this ok,,,
    ./system/apps.nix
  ];

  boot.loader.grub.enable = true;
  boot.loader.grub.device = "nodev";
  boot.loader.grub.efiSupport = true;
  boot.loader.efi.canTouchEfiVariables = true;
  
  users.users.agus = {
  isNormalUser = true;
  extraGroups = [ "wheel" "networkmanager" "docker" ];
  };

  networking.hostName = "nixos";
  networking.networkmanager.enable = true;

  services.openssh.enable = true;
  services.openssh.settings.PasswordAuthentication = true; # Cambiar a false si usas llaves

  services.tlp.enable = true;
  services.power-profiles-daemon.enable = false; # TLP entra en conflicto con este, mejor apagarlo

  system.stateVersion = "25.11";
}
