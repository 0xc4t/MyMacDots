{ config, pkgs, lib, ... }:

{
  home.username = "0xc4t";
  home.homeDirectory = "/Users/0xc4t";
  home.stateVersion = "23.11";

  home.packages = with pkgs; [
    bat
    fd
    gcc
    jq
    lsd
    lua-language-server
    nodejs
    ripgrep
    stylua
    zsh-powerlevel10k
  ];

  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
    withRuby = false; 
    withPython3 = false;
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
      gsync = "git add . && git commit -m \"sync: $(date +'%Y-%m-%d %H:%M:%S')\" && git push origin main";
      ls = "lsd";
      clear = "printf $'\\033[2J\\033[3J\\033[1;1H'";
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
