{
  description = "0xc4t Darwin System Flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-darwin.url = "github:nix-darwin/nix-darwin/master";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
    nix-homebrew.url = "github:zhaofengli/nix-homebrew";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, nix-darwin, home-manager, nix-homebrew }@inputs: { 
    darwinConfigurations = {
      "mac-rto" = nix-darwin.lib.darwinSystem {
        system = "aarch64-darwin";
        specialArgs = { inherit inputs; }; 
        modules = [
          ./darwin/mac-rto.nix

          {
            users.users."0xc4t".home = "/Users/0xc4t";
            system.primaryUser = "0xc4t"; 
            system.stateVersion = 6;
          }

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
