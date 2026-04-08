{ pkgs, ... }:

{
  programs.bash = {
    interactiveShellInit = ''
      export EDITOR="vim"
    '';
    shellAliases = {
      
      ### CONF ALIASES
      conf = "cd /etc/nixos/";
      rebuild = "sudo nixos-rebuild switch --flake /etc/nixos#tokuOS";
      packages = "nano /etc/nixos/system/apps.nix";
      edit-aliases = "nano /etc/nixos/system/bash.nix";
      migrate-conf = "sudo cp -r /etc/nixos/* /home/agus/Projects/tokuOS/ && cd /home/agus/Projects/tokuOS/"; # Someday I'll configure this way easier
      
      # Some shortcuts
      l = "ls -lrph";
      nclean = "sudo nix-collect-garbage -d";
      c = "clear";
    };
  };
}
