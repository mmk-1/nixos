{
  pkgs,
  config,
  ...
}: {
  programs.nixvim = {
    plugins = {
      nix.enable = true;
      hmts.enable = true;
      nix-develop.enable = true;

      # LSP server
      lsp.servers.nil_ls = {
        enable = true;
      };

      # Formatting
      conform-nvim = {
        formattersByFt = {
          nix = ["alejandra"];
        };
        # formatters = {
        #   alejandra = {
        #     command = "${pkgs.alejandra}/bin/alejandra";
        #   };
        # };
      };

      treesitter = {
        grammarPackages = with config.programs.nixvim.plugins.treesitter.package.builtGrammars; [
          nix
        ];
      };
    };
  };
}
