{ config, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./bash.nix
    ./de.nix
    ./fonts.nix
    ./apps.nix
  ];

  boot.loader.grub.enable = true;
  boot.loader.grub.device = "nodev";
  boot.loader.grub.efiSupport = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "nixos-agustin";
  networking.networkmanager.enable = true;

  services.openssh.enable = true;
  services.openssh.settings.PasswordAuthentication = true; # Cambiar a false si usas llaves

  services.tlp.enable = true;
  services.power-profiles-daemon.enable = false; # TLP entra en conflicto con este, mejor apagarlo

  system.stateVersion = "24.11";
}