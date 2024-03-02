{
  programs.nixvim = {
    globals = {
      mapleader = " ";
      maplocalleader = " ";
    };

    options = {
      backup = false;
      clipboard = {
        register = "unnamedplus";
      };
      cmdheight = 1;
      conceallevel = 0;
      hlsearch = true;
      ignorecase = true;
      mouse = "a";
      showmode = false;
      showtabline = 1;
      smartcase = true;
      smartindent = true;
      splitbelow = true;
      splitright = true;
      swapfile = false;
      termguicolors = true;
      timeoutlen = 1000;
      undofile = true;
      updatetime = 100;
      writebackup = false;
      expandtab = true;
      shiftwidth = 4;
      tabstop = 4;
      cursorline = true;
      number = true;
      laststatus = 3;
      showcmd = false;
      ruler = false;
      relativenumber = true;
      numberwidth = 4;
      signcolumn = "yes";
      wrap = false;
      scrolloff = 0;
      sidescrolloff = 8;
      guifont = "monospace:h17";
      title = false;
    };
  };
}
