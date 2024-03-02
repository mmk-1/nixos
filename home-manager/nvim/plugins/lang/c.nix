{ pkgs
, config
, ...
}: {
  programs.nixvim = {
    plugins = {
      # LSP server
      lsp.servers.clangd.enable = true;

      # Formatting
      conform-nvim = {
        formattersByFt = {
          c = [ "clangd" ];
          cpp = [ "clangd" ];
        };
      };

      # Linting (TBD)

    };
  };
}
