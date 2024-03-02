{
  programs.nixvim = {
    # keymaps = [
    #   {
    #     action = "<C-d>zz";
    #     key = "<C-d>";
    #     options = {
    #       desc = "Keep cursor in middle when jumping";
    #     };
    #     mode = [
    #       "n"
    #     ];
    #   }
    #   {
    #     action = "<C-u>zz";
    #     key = "<C-u>";
    #     options = {
    #       desc = "Keep cursor in middle when jumping";
    #     };
    #     mode = [
    #       "n"
    #     ];
    #   }
    #   {
    #     action = "mzJ`z";
    #     key = "J";
    #     options = {
    #       desc = "Combine line into one";
    #     };
    #     mode = [
    #       "n"
    #     ];
    #   }
    #   {
    #     action = "nzzzv";
    #     key = "n";
    #     options = {
    #       desc = "Keep cursor in middle when searching";
    #     };
    #     mode = [
    #       "n"
    #     ];
    #   }
    #   {
    #     action = "Nzzzv";
    #     key = "N";
    #     options = {
    #       desc = "Keep cursor in middle when searching";
    #     };
    #     mode = [
    #       "n"
    #     ];
    #   }
    #   {
    #     action = "v:count == 0 ? 'gj' : 'j'";
    #     key = "j";
    #     options = {
    #       silent = true;
    #       expr = true;
    #     };
    #     mode = [
    #       "n"
    #     ];
    #   }
    #   {
    #     action = "v:count == 0 ? 'gk' : 'k'";
    #     key = "k";
    #     options = {
    #       silent = true;
    #       expr = true;
    #     };
    #     mode = [
    #       "n"
    #     ];
    #   }
    #   {
    #     action = "<C-w>v";
    #     key = "<leader>|";
    #     options = {
    #       desc = "Split window right";
    #     };
    #     mode = [
    #       "n"
    #     ];
    #   }
    #   {
    #     action = "<C-w>s";
    #     key = "<leader>-";
    #     options = {
    #       desc = "Split window below";
    #     };
    #     mode = [
    #       "n"
    #     ];
    #   }
    #   {
    #     action = "<cmd>w<cr><esc>";
    #     key = "<C-s>";
    #     options = {
    #       desc = "Save file";
    #     };
    #     mode = [
    #       "n"
    #       "v"
    #       "x"
    #     ];
    #   }
    #   {
    #     action = "'_dP";
    #     key = "<leader>p";
    #     options = {
    #       desc = "Paste without updating buffer";
    #     };
    #     mode = [
    #       "v"
    #     ];
    #   }
    #   {
    #     action = ">gv";
    #     key = ">";
    #     options = {
    #       desc = "Stay in visual mode during outdent";
    #     };
    #     mode = [
    #       "v"
    #       "x"
    #     ];
    #   }
    #   {
    #     action = "<gv";
    #     key = "<";
    #     options = {
    #       desc = "Stay in visual mode during indent";
    #     };
    #     mode = [
    #       "v"
    #       "x"
    #     ];
    #   }
    # ];
    keymaps = [
      # Move highlighted blocks
      {
        action = ":m '>+1<CR>gv=gv";
        key = "J";
        options = {
          desc = "Move highlighted blocks up";
        };
        mode = [
          "v"
        ];
      }
      {
        action = ":m '<-2<CR>gv=gv";
        key = "K";
        options = {
          desc = "Move highlighted blocks down";
        };
        mode = [
          "v"
        ];
      }
      # Stay in indent mode
      {
        action = "<gv";
        key = "<";
        options = {
          desc = "Indent left";
        };
        mode = [
          "v"
        ];
      }
      {
        action = ">gv";
        key = ">";
        options = {
          desc = "Indent right";
        };
        mode = [
          "v"
        ];
      }
      # Preserves the highlighted & yanked text in register
      {
        action = "<cmd>WhichKey \\<space><cr>";
        key = "<C-Space>";
        options = {
          desc = "Show WhichKey";
        };
        mode = [
          "n"
        ];
      }
      # {
      #   action = "<cmd>nohlsearch<CR>";
      #   key = "";
      #   options = {
      #     desc = "Show WhichKey";
      #   };
      #   mode = [
      #     "n"
      #   ];
      # }
    ];
  };
}
