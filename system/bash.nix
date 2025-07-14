{ config, pkgs, ... }: 
{
  # Rootless :'v
  security.sudo.wheelNeedsPassword = false;
  
  # Aliases
  programs.bash.shellAliases = {
    rebuild = "sudo nixos-rebuild switch --flake /home/agustin/repos/github/mynix-doties#rssagus";
    configure-dots = "cd repos/github/mynix-doties/ && code .";
  };

  # Starship prompt
  programs.starship.enable = true;

}