{ config, pkgs, ... }: 
{
  # Rootless :'v
  security.sudo.wheelNeedsPassword = false;
  
  # Aliases
  programs.bash.shellAliases = {
    rebuild = "cd repos/github/mynix-doties/ && sudo nixos-rebuild switch --flake .#rssagus";
    configure-dots = "cd Repos/github/mynix-doties/ && code .";
  };

  # Starship prompt
  programs.starship.enable = true;

}