{ config, pkgs, ... }: 
{
  # Unfree pkgs
  nixpkgs.config.allowUnfree = true;

  # Flakes & stuff
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

}