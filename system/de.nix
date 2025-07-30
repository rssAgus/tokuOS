{ config, pkgs, ... }: 
{
  # Hyprland (WIP)
  programs.hyprland.enable = true;

  # SDDM
  services.xserver.displayManager.sddm.enable = true;
}
