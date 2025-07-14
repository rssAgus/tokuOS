{ config, pkgs, ... }: 
{

  # Bash with Starship
  programs.bash.shellAliases = [
    sudo nixos-rebuild switch = [ "rebuild" ];
  ];
  
  programs.starship.enable = true;

}