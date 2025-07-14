{ config, pkgs, ... }: 
{

  # Flatpak enabled
  services.flatpak.enable = true;

  # Docker
    virtualisation.docker = {
    enable = true;
  };

  # Enable the OpenSSH daemon.
   services.openssh.enable = true;

}