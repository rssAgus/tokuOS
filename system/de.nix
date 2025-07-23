{ config, pkgs, ... }: 
{
  # GNOME, COSMIC not working lol
  services.displayManager.gdm.enable = true;
  services.desktopManager.gnome.enable = true;

  # Hyprland (WIP)
  programs.hyprland.enable = true;

}
