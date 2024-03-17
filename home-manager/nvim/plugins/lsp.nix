{pkgs, ...}: {
  programs.nixvim = {
    plugins = {
      lsp = {
        enable = true;

        servers = {
          clangd.enable = true;
          gopls.enable = true;
          rust-analyzer.enable = true;
        };

        keymaps = {
          diagnostic = {
            "]d" = "goto_next";
            "[d" = "goto_prev";
            "<leader>dd" = {
              action = "open_float";
              desc = "Open Diagnostic List";
            };
          };
          lspBuf = {
            K = "hover";
            gD = "declaration";
            gr = "references";
            gd = "definition";
            gi = "implementation";
            gt = "type_definition";
            "<leader>cr" = {
              action = "rename";
              desc = "Rename";
            };
          };
        };
      };
    };

    extraConfigLua =
      # lua
      ''
        local config = {
            virtual_text = false
        }

        vim.diagnostic.config(config)
      '';
  };
}
