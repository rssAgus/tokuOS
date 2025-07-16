{ config, pkgs, ... }: 
{
  # Rootless bc IDGAF
  security.sudo.wheelNeedsPassword = false;
  
  # Aliases
  programs.bash.shellAliases = {
    rebuild = "cd Repos/github/mynix-doties/ && sudo nixos-rebuild switch --flake .#rssagus";
    configure-dots = "cd Repos/github/mynix-doties/ && code .";
  };

  # Starship Prompt
  programs.starship.enable = true;

}