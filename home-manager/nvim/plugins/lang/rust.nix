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

      treesitter = {
        grammarPackages = with config.programs.nixvim.plugins.treesitter.package.builtGrammars; [
          rust
        ];
      };
    };
  };
}
