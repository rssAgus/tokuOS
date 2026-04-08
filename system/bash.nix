{ pkgs, ... }:

{
  programs.bash = {
    interactiveShellInit = ''
      export EDITOR="vim"
    '';
    shellAliases = {
      
      ### CONF ALIASES
      conf = "codium /etc/nixos/";
      rebuild = "sudo nixos-rebuild switch --flake /etc/nixos#tokuOS";
      packages = "codium /etc/nixos/system/apps.nix";
      edit-aliases = "codium /etc/nixos/system/bash.nix";
      migrate-conf = "sudo cp -r /etc/nixos/* /home/agus/Projects/tokuOS/ && cd /home/agus/Projects/tokuOS/"; # Someday I'll configure this way easier
      
      # Some shortcuts
      l = "ls -lrph";
      nclean = "sudo nix-collect-garbage -d";
      c = "clear";
    };
  };
}
