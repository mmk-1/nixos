{ pkgs, ... }: {
  programs.nixvim = {
    plugins = {
      conform-nvim = {
        enable = true;
        formatOnSave = {
          lspFallback = true;
          timeoutMs = 500;
        };
        formattersByFt = {
          c = [ "clangd" ];
          cpp = [ "clangd" ];
        };
      };
    };
  };
}
