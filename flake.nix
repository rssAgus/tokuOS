{
  description = "I called it Nixie while doing this flake";

  inputs = {
    # La version de Nixpkgs que usaremos para nuestro sistema
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable"; # O una rama especifica como "nixos-24.05"

    # Home Manager para la gestion de paquetes y configuraciones de usuario
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs"; # Asegura que Home Manager use la misma version de nixpkgs
  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs: {
    # Define nuestros sistemas NixOS
    nixosConfigurations = {
      # Este es el nombre de tu sistema, puedes cambiarlo
      "NixOS" = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux"; # Cambia esto a tu arquitectura
        specialArgs = { inherit inputs; }; # Pasa los inputs a los modulos

        modules = [
          # Tu configuracion principal de NixOS (hardware, servicios del sistema, etc.)
          ./configuration.nix

          # Hardware especifico (generado por nixos-generate-config)
          # Si aun no tienes este archivo, puedes copiarlo de /etc/nixos/hardware-configuration.nix
          ./hardware-configuration.nix

          # Modulo para habilitar Home Manager para un usuario especifico
          home-manager.nixosModules.home-manager {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.agustin = import ./home.nix; # Archivo de configuracion de Home Manager para tu usuario
          }
        ];
      };
    };
  };
}
