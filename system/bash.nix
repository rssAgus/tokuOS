{ config, pkgs, ... }: 
{

  programs.bash.shellAliases = {
    rebuild = "sudo nixos-rebuild switch";
    configure-dots = "cd repos/github/mynix-doties/ && code .";
  };

  programs.starship.enable = true;

}