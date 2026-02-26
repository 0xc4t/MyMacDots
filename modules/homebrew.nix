{ config, pkgs, ... }:

{
  nix-homebrew.enable = true;
  nix-homebrew.enableRosetta = true;
  nix-homebrew.user = "0xc4t";
  nix-homebrew.autoMigrate = true;

  homebrew = {
    enable = true;
    
    onActivation = {
      autoUpdate = false;
      upgrade = true;
      cleanup = "zap";
    };

    taps = [
      "koekeishiya/formulae"
      "shaunsingh/SFMono-Nerd-Font-Ligaturized"
      "FelixKratz/formulae"
      "nikitabobko/tap"
    ];

    brews = [
      "mingw-w64"
      "clang-format"
      "openjdk"
      "spicetify-cli"
      "sketchybar"
      "switchaudio-osx"
      "nowplaying-cli"
      "readline"
      "lua"
      "borders"
          ];

    casks = [
      "postman"
      "font-sf-mono-nerd-font-ligaturized"
      "telegram-desktop"
      "sf-symbols"
      "font-sf-mono"
      "font-sf-pro"
      "localsend"
      "flameshot"
      "xquartz"
      "sf-symbols"
      "aerospace"
    ];
  };
}
