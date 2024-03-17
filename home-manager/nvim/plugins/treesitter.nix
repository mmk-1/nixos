{ config
, pkgs
, ...
}: {
  programs.nixvim = {
    plugins = {
      treesitter = {
        enable = true;
        nixvimInjections = true;
        indent = false;
        nixGrammars = true;

        incrementalSelection = {
          enable = true;
          keymaps = {
            initSelection = "<C-space>";
            nodeIncremental = "<C-space>";
            nodeDecremental = "<bs>";
          };
        };

        grammarPackages = with config.programs.nixvim.plugins.treesitter.package.builtGrammars; [
          nix
          c
          cpp
          json
          python
          
          go
          gomod

          rust

          markdown
          markdown_inline
        ];
      };
    };
  };
}
