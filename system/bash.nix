{ config, pkgs, ... }: 
{

  security.sudo.wheelNeedsPassword = false;

  programs.bash.shellAliases = {
    rebuild = "cd repos/github/mynix-doties/ && sudo nixos-rebuild switch --flake .#rssagus";
    configure-dots = "cd repos/github/mynix-doties/ && code .";
  };

  programs.starship.enable = true;

}