{ config, ... }: {
  ### A tidy $HOME is a tidy mind
  # home-manager.users.${config.user.name}.xdg.enable = true;
  xdg.enable = true;

  #   export XDG_CONFIG_HOME=$HOME/.config
  # export XDG_CACHE_HOME=$HOME/.cache
  # export XDG_DATA_HOME=$HOME/.local/share

  xdg.cacheHome = "/home/mmk/.cache";
  xdg.configHome = "/home/mmk/.config";
  xdg.dataHome = "/home/mmk/.local/share";

  # home.sessionVariables = {
  #   XDG_CACHE_HOME = "$HOME/.cache";
  #   XDG_CONFIG_HOME = "$HOME/.config";
  #   XDG_DATA_HOME = "$HOME/.local/share";
  # };
}
