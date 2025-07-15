{ config, pkgs, ... }: 
{
  # COSMIC
  services.displayManager.cosmic-greeter.enable = true;
  services.desktopManager.cosmic.enable = true;
  services.desktopManager.cosmic.xwayland.enable = true;

  # Hyprland
  programs.hyprland.enable = true;

}