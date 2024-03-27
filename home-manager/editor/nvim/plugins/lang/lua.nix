{
  pkgs,
  config,
  ...
}: {
  programs.nixvim = {
    plugins = {
      # LSP server
      lsp.servers.lua-ls.enable = true;

      # Formatting
      conform-nvim = {
        formattersByFt = {
          lua = ["stylua"];
        };
      };

      treesitter = {
        grammarPackages = with config.programs.nixvim.plugins.treesitter.package.builtGrammars; [
          lua
          luadoc
          luap
        ];
      };
    };
  };
}
