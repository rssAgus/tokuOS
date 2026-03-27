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
      
      # Atajos 
      ll = "ls -la";
    };
  };
}