{ config, ... }: {
  ### A tidy $HOME is a tidy mind
  # home-manager.users.${config.user.name}.xdg.enable = true;
  xdg.enable = true;

  xdg.cacheHome = "/home/mmk/.cache";
  xdg.configHome = "/home/mmk/.config";
  xdg.dataHome = "/home/mmk/.local/share";

  home.sessionVariables = {
    # EDITOR = "nvim";
  };
}
