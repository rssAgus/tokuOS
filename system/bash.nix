{ config, pkgs, ... }: 
{

  programs.bash.shellAliases = {
    l = "ls -alh";
    ll = "ls -l";
    ls = "ls --color=tty";
  };
  
  programs.starship.enable = true;

}