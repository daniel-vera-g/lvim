lvim.plugins = {
  --  Colorschemes
  {"lunarvim/colorschemes"},
  {"folke/tokyonight.nvim"},
  {"Pocco81/Catppuccino.nvim"},
  -- Utils
  {"Pocco81/AutoSave.nvim"},
  {"tpope/vim-surround"},
  {'machakann/vim-highlightedyank'},
  {"folke/zen-mode.nvim"},
  { "folke/twilight.nvim"},
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

return {
  bullets = require('user.plugins.bullets'),
  nvimtree = require('user.plugins.nvimtree'),
  treesitter = require('user.plugins.treesitter'),
  vim_markdown = require('user.plugins.vim_markdown'),
  terminal = require('user.plugins.terminal'),
  fugitive = require('user.plugins.fugitive'),
  dashboard = require('user.plugins.dashboard'),
  vsnips = require('user.plugins.vsnips'),
  compe = require('user.plugins.compe'),
  wiki = require("user.plugins.wiki"),
  autosave = require('user.plugins.autosave'),
  null_ls = require("user.plugins.null_ls"),
  zen_mode = require("user.plugins.zen_mode"),
  twilight = require("user.plugins.twilight")
}
