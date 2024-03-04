{
  pkgs,
  lib,
  config,
  ...
}: {
  imports = [
    ./keymaps.nix
    ./options.nix
    # ./autocmds.nix
    # ./reload.nix
    # ./plugins/whichkey.nix
    ./plugins/telescope.nix

    # ./plugins/debug.nix
    # ./plugins/coding.nix
    # ./plugins/editor.nix
    # ./plugins/git.nix
    # ./plugins/startup.nix
    # ./plugins/test.nix

    ./plugins/lsp.nix
    ./plugins/treesitter.nix
    ./plugins/conform.nix

    # ./plugins/colorscheme.nix
    # ./plugins/ui.nix

    # ./plugins/ai.nix
    # ./plugins/training.nix
    # ./plugins/notes.nix

    # ./plugins/lang/css.nix
    # ./plugins/lang/c.nix
    # ./plugins/lang/docker.nix
    # ./plugins/lang/go.nix
    # ./plugins/lang/lua.nix
    # ./plugins/lang/kdl.nix
    # ./plugins/lang/json.nix
    # ./plugins/lang/html.nix
    # ./plugins/lang/nix.nix
    # ./plugins/lang/markdown.nix
    # ./plugins/lang/python.nix
    # ./plugins/lang/yaml.nix
  ];

  programs.nixvim = {
    enable = true;
    extraPlugins = with pkgs.vimPlugins; [plenary-nvim];
    enableMan = true;
    # package = pkgs.neovim-nightly;
    colorschemes.catppuccin = {
      enable = true;
      flavour = "mocha";
    };
  };
}
