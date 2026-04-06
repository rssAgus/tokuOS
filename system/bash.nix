{ pkgs, ... }:

{
  programs.bash = {
    interactiveShellInit = ''
      export EDITOR="vim"
    '';
    shellAliases = {
      nos = "sudo nixos-rebuild switch --flake .";
      nclean = "sudo nix-collect-garbage -d";
      
      c = "clear";
      g = "git";
      gs = "git status";
      conf = "cd /etc/nixos/";
      rebuild = "sudo nixos-rebuild switch --flake /etc/nixos#nixos-agustin";
      packages = "nano /etc/nixos/system/apps.nix";
      
      # Atajos 
      l = "ls -lrph";
    };
  };
}
