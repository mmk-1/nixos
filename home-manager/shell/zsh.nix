{
  pkgs,
  lib,
  config,
  ...
}: {
  programs.zsh = {
    enable = true;
    shellAliases = {
      ls = "ls --color";
    };

    history = {
      size = 100000;
      path = "${config.xdg.cacheHome}/zsh/history";
    };

    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    # This is relative to the $HOME
    dotDir = ".config/zsh";

    # Plugins
    plugins = [
      {
        name = "powerlevel10k";
        src = pkgs.zsh-powerlevel10k;
        file = "share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
      }
      {
        name = "powerlevel10k-config";
        src = ./p10k-config;
        file = "p10k.zsh";
      }
    ];

    # zplug = {
    #   enable = true;
    #   plugins = [
    #     { name = "zsh-users/zsh-autosuggestions"; }
    #     { name = "zsh-users/zsh-syntax-highlighting"; }
    #   ];
    # };

    # Extra config
    initExtra = ''
      setopt appendhistory
      bindkey "^R" history-incremental-search-backward
    '';
  };
}
