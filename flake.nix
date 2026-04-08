{
  description = "Configuracion modular de NixOS";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    noctalia = {
      url = "github:noctalia-dev/noctalia-shell";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, ... }@inputs: {
    nixosConfigurations.tokuOS = nixpkgs.lib.nixosSystem {
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
