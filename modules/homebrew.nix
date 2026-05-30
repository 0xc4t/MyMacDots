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
      "anomalyco/tap"
      "FelixKratz/formulae"
      "koekeishiya/formulae"
      "nikitabobko/tap"
    ];

    brews = [
      "go"
      "hydra"
      "lua"
      "openjdk"
      "spicetify-cli"
      "wget"
      "mole"
      "uv"
    ];

    casks = [
      "font-iosevka-nerd-font"
      "font-jetbrains-mono-nerd-font"
      "telegram-desktop"
      "anydesk"
      "thunderbird"
      "obsidian"
      "burp-suite"
      "codex"
    ];
  };
}
