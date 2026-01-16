{ config, pkgs, ... }:

{
  # 1. Konfigurasi Modul nix-homebrew (Manajemen instalasi Homebrew-nya)
  nix-homebrew.enable = true;
  nix-homebrew.enableRosetta = true;
  nix-homebrew.user = "0xc4t";
  nix-homebrew.autoMigrate = true; # Tambahkan ini agar otomatis migrasi jika sudah ada brew

  # 2. Konfigurasi Homebrew bawaan nix-darwin (Manajemen Apps/Packages)
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
    ];

    casks = [
      "postman"
      "font-sf-mono-nerd-font-ligaturized"
      "telegram-desktop"
      "sf-symbols"
      "font-sf-mono"
      "font-sf-pro"
      "aerospace"
      "localsend"
    ];
  };
}
