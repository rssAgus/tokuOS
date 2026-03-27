{
  description = "Configuracion modular de NixOS";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.11";
  };

  outputs = { self, nixpkgs, ... }@inputs: {
    nixosConfigurations.nixos-agustin = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      
      specialArgs = { inherit inputs; };
      
      modules = [
        ./configuration.nix

        ({ pkgs, ... }: {
          nix.settings.experimental-features = [ "nix-command" "flakes" ];
          
          nix.settings.auto-optimise-store = true;
          
          nixpkgs.config.allowUnfree = true;
        })
      ];
    };
  };
}