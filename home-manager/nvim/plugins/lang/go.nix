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
          go = ["goimports"];
        };
      };

      # Linting (TBD)
    };
  };
}
