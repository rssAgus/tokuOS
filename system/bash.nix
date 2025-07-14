{ config, pkgs, ... }: 
{
  # Bash with Starship
  programs.bash.enable = true;
  programs.starship.enable = true;

  shellAliases = [
    sudo nixos-rebuild switch = "rebuild"
  ];



}