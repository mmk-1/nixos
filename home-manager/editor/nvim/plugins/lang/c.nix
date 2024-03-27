{
  pkgs,
  config,
  ...
}: {
  programs.nixvim = {
    plugins = {
      # LSP server
      lsp.servers.clangd.enable = true;

      # Formatting
      conform-nvim = {
        formattersByFt = {
          c = ["clangd"];
          cpp = ["clangd"];
        };
      };

      treesitter = {
        grammarPackages = with config.programs.nixvim.plugins.treesitter.package.builtGrammars; [
          c
          cpp
        ];
      };
    };
  };
}
