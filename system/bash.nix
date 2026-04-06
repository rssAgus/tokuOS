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
      edit-aliases = "nano /etc/nixos/system/bash.nix";
      migrate-conf = "sudo cp -r /etc/nixos/* /home/agus/Projects/tokuOS/ && cd /home/agus/Projects/tokuOS/ && git add .";
      
      # Atajos 
      l = "ls -lrph";
    };
  };
}
