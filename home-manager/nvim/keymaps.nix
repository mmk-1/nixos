{
  programs.nixvim = {
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
    ];

    # Keymaps that couldn't be set via nixvim for some reason.
    extraConfigLua = ''
      -- Preserves the highlighted & yanked text in register
      vim.keymap.set("x", "p", [["_dP]])
    '';
  };
}
