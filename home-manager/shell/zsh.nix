{ pkgs
, lib
, config
, ...
}: {
  programs.zsh = {
    enable = true;
    shellAliases = {
      ls = "ls --color";
    };

    history = {
      size = 1000000;
      path = "${config.xdg.cacheHome}/zsh/history";
    };

    enableCompletion = true;
    enableAutosuggestions = true;

    # Plugins
    zplug = {
      enable = true;
      plugins = [
        { name = "zsh-users/zsh-autosuggestions"; }
        { name = "romkatv/powerlevel10k"; tags = [ "as:theme" "depth:1" ]; }
        { name = "zsh-users/zsh-syntax-highlighting"; }
      ];
    };

    # plugins = [
    #   {
    #     name = "powerlevel10k";
    #     src = pkgs.zsh-powerlevel10k;
    #     file = "share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
    #   }
    #   {
    #     name = "powerlevel10k-config";
    #     src = ./p10k-config;
    #     file = "p10k.zsh";
    #   }
    # ];

    # Extra config
    initExtra = ''
      setopt appendhistory
      bindkey "^R" history-incremental-search-backward
    '';
  };
}
