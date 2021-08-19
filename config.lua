-- LunarVim internal settings
lvim.format_on_save = true
lvim.lint_on_save = true
lvim.colorscheme = "spacegray"
lvim.encoding="utf-8"
lvim.fileencoding="utf-8"

-- Vim built in
vim.opt.cmdheight = 1
vim.opt.relativenumber = true
vim.opt.wrap = true
vim.opt.spell = false

-- Spaces for tabs
vim.opt.tabstop=2 -- number of spaces used as tab for file(Number of visual spaces per TAB)
vim.opt.softtabstop=2 -- number of spaces used as tab for editing(Number of spaces in TAB when editing)
vim.opt.shiftwidth=2 -- number of spaces used to autoindent(Number of spaces indented when reindent operations (>> and <<) are used)
vim.opt.expandtab=true -- expand tabs into spaces(Convert TABs to spaces)
vim.opt.smarttab=true -- smart tabulation and backspace(Enable intelligent tabbing and spacing for indentation and alignment)
vim.opt.bs="indent,eol,start" -- allow backspacing over everything
vim.opt.ai=true -- Auto indent


-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = ","
vim.api.nvim_set_keymap('n', 'Y', 'yg_', {noremap=true})

-- +++
-- Plugin configs
-- +++

lvim.builtin.dashboard.active = true

lvim.builtin.terminal.active = true

-- nvimtree
lvim.builtin.nvimtree.side = "right"
lvim.builtin.nvimtree.show_icons.git = 0
lvim.builtin.nvimtree.hide_dotfiles = 0

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
  {"tpope/vim-surround"},
  {'machakann/vim-highlightedyank'},
  -- TODO gx open links
  {"felipec/vim-sanegx",
    event = "BufRead"
  },
  {
    "folke/persistence.nvim",
    event = "VimEnter",
    module = "persistence",
    config = function()
      require("persistence").setup {
        dir = vim.fn.expand(vim.fn.stdpath "config" .. "/session/"),
        options = { "buffers", "curdir", "tabpages", "winsize" },
      }
    end,
  },
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
  {
    "iamcco/markdown-preview.nvim",
    run = "cd app && npm install",
    ft = "markdown",
    config = function()
      vim.g.mkdp_auto_start = 1
    end,
  },

  -- Git
  {
  "tpope/vim-fugitive",
  cmd = {
    "G",
    "Git",
    "Gdiffsplit",
    "Gread",
    "Gwrite",
    "Ggrep",
    "GMove",
    "GDelete",
    "GBrowse",
    "GRemove",
    "GRename",
    "Glgrep",
    "Gedit"
  },
  ft = {"fugitive"}
},
}

