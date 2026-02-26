{ config, pkgs, lib, ... }:

{
  home.username = "0xc4t";
  home.homeDirectory = "/Users/0xc4t";
  home.stateVersion = "23.11";

  home.packages = with pkgs; [
    ripgrep fd bat jq nodejs lsd
    zsh-powerlevel10k gcc stylua lua-language-server
  ];

  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
  };


  home.file.".config/aerospace" = {
    source = ./aerospace;
    recursive = true;
  };

  home.file.".config/lsd" = {
    source = ./lsd;
    recursive = true;
  };

  home.file.".config/fastfetch" = {
    source = ./fastfetch;
    recursive = true;
  };

  home.file.".config/kitty" = {
    source = ./kitty;
    recursive = true;
  };

  home.file.".config/nvim" = {
    source = ./nvim;
    recursive = true;
  };

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    sessionVariables = {
      PATH = "/Users/0xc4t/Library/Python/3.9/bin:$PATH";
    };

    shellAliases = {
      ls = "lsd";
      clear = "clear -x";
    };

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" ];
    };

    initContent = lib.mkMerge [
        (lib.mkBefore ''
        # Fallback TERM for SSH
        if [[ -n "$SSH_CONNECTION" ]]; then
          export TERM=xterm-256color
        fi
  '')
      (lib.mkBefore ''
        if [[ -r "''${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-''${(%):-%n}.zsh" ]]; then
          source "''${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-''${(%):-%n}.zsh"
        fi
      '')
      
      ''
        [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
        source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme
      ''
    ];
  };
}
