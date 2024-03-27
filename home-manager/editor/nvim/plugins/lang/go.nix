{
  pkgs,
  config,
  ...
}: {
  programs.nixvim = {
    plugins = {
      # LSP server
      lsp.servers.gopls.enable = true;

      # Formatting
      conform-nvim = {
        formattersByFt = {
          go = ["goimports" "gofmt"];
        };
      };
      
      treesitter = {
        grammarPackages = with config.programs.nixvim.plugins.treesitter.package.builtGrammars; [
          go
          gomod
          gosum
          gowork
        ];
      };
    };
  };
}