{ pkgs, ... }:

{
  config = {
    colorschemes.tokyonight.enable = true;

    globals.mapleader = " ";

    autoCmd = import ./autocmd;

    options = import ./options;

    keymaps = import ./keymaps;

    plugins = {}
    // import ./plugins/alpha.nix             # Greeter
    // import ./plugins/auto-save.nix         # Auto save
    // import ./plugins/autopairs.nix         # Auto-closing pairs
    // import ./plugins/barbar.nix            # Tabline
    // import ./plugins/cmp.nix               # Completion
    // import ./plugins/comment-nvim.nix      # Convenint commenting
    // import ./plugins/gitsigns.nix          # Git integration for buffers
    // import ./plugins/harpoon.nix           # Quick file list
    // import ./plugins/indent-blankline.nix  # Indentation guides
    // import ./plugins/lsp.nix               # Language server
    // import ./plugins/lspsaga.nix           # LSP on steroids
    // import ./plugins/lualine.nix           # Status line
    // import ./plugins/markdown-preview.nix  # Markdown previewer
    // import ./plugins/navbuddy.nix          # Navigation popup
    // import ./plugins/neogit.nix            # Git interface
    // import ./plugins/noice.nix             # UI popup menu
    // import ./plugins/notify.nix            # Notifications
    // import ./plugins/nvim-tree.nix         # File explorer
    // import ./plugins/specs.nix             # Cursor dance
    // import ./plugins/surround.nix          # Modify delimiter pairs
    // import ./plugins/telescope.nix         # Fuzzy find all the things
    // import ./plugins/todo-comments.nix     # To-Do search
    // import ./plugins/toggleterm.nix        # Floating terminal
    // import ./plugins/treesitter.nix        # Parsing system
    // import ./plugins/trouble.nix           # Pretty diagnostics
    // import ./plugins/which-key.nix         # Key suggestions
    ;

    extraPlugins = with pkgs.vimPlugins; [
      hop-nvim         # Quick navigation
      molten-nvim      # Run Jupyter code
      nvim-hlslens     # Nice search highlighting
      nvim-scrollbar   # Scrollbar
      vim-smoothie     # Smooth scrolling
      zen-mode-nvim    # Zen mode
      pkgs.python311Packages.jupyter-client
    ];

    extraConfigLua = ""
    + import ./lua_config/cmp.nix
    + import ./lua_config/hlslens.nix
    + import ./lua_config/molten.nix
    + ''
      require('hop').setup{}
      require('scrollbar').setup{}

      -- This needs to be after `hlslens` setup.
      require('scrollbar.handlers.search').setup{}
    ''
    ;
  };
}
