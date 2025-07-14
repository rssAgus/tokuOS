{ config, pkgs, ... }: 
{
  # Rootless :'v
  security.sudo.wheelNeedsPassword = false;
  
  # Aliases
  programs.bash.shellAliases = {
    rebuild = "cd /home/agustin/repos/github/mynix-doties/ && sudo nixos-rebuild switch --flake .#rssagus";
    configure-dots = "cd repos/github/mynix-doties/ && code .";
  };

  # Starship prompt
  programs.starship.enable = true;

}