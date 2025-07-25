{ config, pkgs, ... }:

{
  home.username = "arusso";
  home.homeDirectory = "/home/arusso";

  programs.home-manager.enable = true;

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  imports = [
    ./programs.nix
  ];

  programs.bash.enable = true;

  home.stateVersion = "25.11";
}
