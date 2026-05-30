{
  description = "0xc4t Darwin System Flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nixpkgs-2211.url = "github:NixOS/nixpkgs/nixos-22.11";
    nix-darwin.url = "github:nix-darwin/nix-darwin/master";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
    nix-homebrew.url = "github:zhaofengli/nix-homebrew";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, nixpkgs-2211, nix-darwin, home-manager, nix-homebrew }@inputs: {
    darwinConfigurations = {
      "mac-rto" = nix-darwin.lib.darwinSystem {
        system = "aarch64-darwin";
        specialArgs = { 
          inherit inputs; 
          pkgs-2211 = import nixpkgs-2211 {
            system = "aarch64-darwin";
            config.allowUnfree = true;
          };
        };
        modules = [
          ./darwin/mac-rto.nix
          ./modules/packages.nix
          ./modules/default.nix
         nix-homebrew.darwinModules.nix-homebrew
          home-manager.darwinModules.home-manager

          ./modules/homebrew.nix
          ./modules/home-manager.nix
        ];
      };
    };
  };
}
