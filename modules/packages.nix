
{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    neovim
    htop
    lsd
    kitty
    mkalias
    fastfetch
    wget
    btop
    flameshot
    tree
    openvpn
    nerd-fonts.iosevka
    nasm
    freerdp
    pkgsCross.mingwW64.buildPackages.gcc
    pkgsCross.mingwW64.openssl.dev
    pkgsCross.mingwW64.openssl.out
  ];
}
