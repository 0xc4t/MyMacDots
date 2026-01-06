{
  description = "0xc4t Darwin System Flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-darwin.url = "github:nix-darwin/nix-darwin/master";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
    nix-homebrew.url = "github:zhaofengli/nix-homebrew";
  };

  outputs = inputs@{ self, nix-darwin, nixpkgs, nix-homebrew }:
  let
    configuration = { pkgs, config, ... }: {
      nixpkgs.config.allowUnfree = true;
      environment.systemPackages =
        [ pkgs.neovim
          pkgs.lsd
          pkgs.kitty
          pkgs.mkalias
          pkgs.fastfetch
          pkgs.wget
        ];

      system.primaryUser = "0xc4t";

      homebrew = {
        enable = true;
        taps = [ "koekeishiya/formulae" ];
        brews = [ "yabai" "skhd" "mingw-w64" "clang-format"];
      };


      nix.settings.experimental-features = "nix-command flakes";

      system.configurationRevision = self.rev or self.dirtyRev or null;

      system.stateVersion = 6;

      nixpkgs.hostPlatform = "aarch64-darwin";
    };
  in
  {

    darwinConfigurations."mac-rto" = nix-darwin.lib.darwinSystem {
    system = "aarch64-darwin";
      modules = [ 
      configuration
      ./modules/skhd.nix
      ./modules/mac-rto.nix
      ./modules/yabai.nix
       nix-homebrew.darwinModules.nix-homebrew
      {
      nix-homebrew = {
        enable = true;
        enableRosetta = true;
        user = "0xc4t";
        };
        }
      ];
    };
  };
}
