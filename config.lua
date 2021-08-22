-- Basic Lunarvim configuration
lvim.format_on_save = true
lvim.lint_on_save = true

lvim.colorscheme = "spacegray"

lvim.encoding="utf-8"
lvim.fileencoding="utf-8"

lvim.leader = ','

-- Basic vim built in config
vim.opt.cmdheight = 1
vim.opt.relativenumber = true
vim.opt.wrap = true
vim.opt.spell = false

-- Other user configuration
require 'user.config'

-- User specific keybindings
require 'user.keybindings'

---
-- Plugins
---
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
  {"lervag/wiki.vim"},
  {"plasticboy/vim-markdown",
  },
  {"dkarter/bullets.vim",
  },
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
    ft = {"fugitive"},
  },
}

-- Language specific config
require 'user.languages'
-- Plugin config
require 'user.plugins'
