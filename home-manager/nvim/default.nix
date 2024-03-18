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
    # ./plugins/whichkey.nix
    ./plugins/telescope.nix

    # ./plugins/debug.nix
    ./plugins/coding.nix
    # ./plugins/editor.nix
    # ./plugins/git.nix
    # ./plugins/startup.nix
    # ./plugins/test.nix

    ./plugins/lsp.nix
    ./plugins/treesitter.nix
    ./plugins/conform.nix

    # ./plugins/colorscheme.nix
    # ./plugins/ui.nix

    ./plugins/lang/c.nix
    ./plugins/lang/go.nix
    ./plugins/lang/rust.nix
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
