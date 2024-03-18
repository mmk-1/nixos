{
  pkgs,
  config,
  ...
}: {
  programs.nixvim = {
    plugins = {
      # LSP server
      lsp.servers = {
        rust-analyzer = {
          enable = true;
          installCargo = false;
          installRustc = false;
        };
      };

      # Formatting
      conform-nvim = {
        formattersByFt = {
          rust = ["rustfmt"];
        };
      };

      # Linting (TBD)
    };
  };
}
