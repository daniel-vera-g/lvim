-- LunarVim internal settings
lvim.format_on_save = true
lvim.lint_on_save = true
lvim.colorscheme = "tokyonight"

-- Vim built in
vim.opt.cmdheight = 1
vim.opt.relativenumber = true
vim.opt.wrap = true
vim.opt.spell = false

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = ","

-- +++
-- Plugin configs
-- +++

lvim.builtin.dashboard.active = true

lvim.builtin.terminal.active = true

-- nvimtree
lvim.builtin.nvimtree.side = "right"
lvim.builtin.nvimtree.show_icons.git = 0
lvim.builtin.nvimtree.hide_dotfiles = 1

-- Treesitter parsers
lvim.builtin.treesitter.ensure_installed = {}
lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true


-- Additional Plugins
lvim.plugins = {
   --  Colorschemes
  {"lunarvim/colorschemes"},
  {"folke/tokyonight.nvim"},

  -- Utils
  {"Pocco81/AutoSave.nvim"},
  -- TODO gx open links
  {"felipec/vim-sanegx"},

  -- LSP related
  {"ray-x/lsp_signature.nvim",
        config = function() require"lsp_signature".on_attach() end,
        event = "InsertEnter"
  },

  -- Markdown related
  {"plasticboy/vim-markdown",
    config = function() require "user.vim-markdown" end
  },
  {"dkarter/bullets.vim"},
}

