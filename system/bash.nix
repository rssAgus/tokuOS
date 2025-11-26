{ config, pkgs, ... }: 
{
  # Rootless bc IDGAF
  security.sudo.wheelNeedsPassword = false;
  
  # Aliases
  programs.bash.shellAliases = {
    rebuild = "cd /home/agustin/repos/mine/tokuOS && sudo nixos-rebuild switch --flake .#rssagus";
    configure-dots = "cd /home/agustin/repos/mine/tokuOS/ && code .";
  };

  # Starship Prompt
  programs.starship.enable = true;

}