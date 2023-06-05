lvim.plugins = {
	-- +++
	-- Languages
	-- +++

	{
		"ray-x/go.nvim",
		config = function()
			require("go").setup()
		end,
	},
	-- { 'mrjosh/helm-ls',
	--   requires = {
	--     { "towolf/vim-helm" },
	--   } },
	{ "rottencandy/vimkubectl" },

	{ "weirongxu/plantuml-previewer.vim", requires = { "tyru/open-browser.vim", "aklt/plantuml-syntax" } },

	-- +++
	-- LSP related
	-- +++

	--- Dark
	{ "lunarvim/colorschemes" },
	{ "folke/tokyonight.nvim" },
	{ "catppuccin/nvim", as = "catppuccin" },
	{ "embark-theme/vim", as = "embark" },
	-- Alternative: https://github.com/cpea2506/one_monokai.nvim
	{ "tanvirtin/monokai.nvim" },
	-- Optional Light themes to use
	{ "NLKNguyen/papercolor-theme" },
	{ "junegunn/seoul256.vim" },
	{
		"ramojus/mellifluous.nvim",
		requires = { "rktjmp/lush.nvim" },
	},
	{ "NTBBloodbath/sweetie.nvim" },

	--  +++
	--  Colorschemes
	--  +++

	--- Dark
	{ "lunarvim/colorschemes" },
	{ "folke/tokyonight.nvim" },
	{ "catppuccin/nvim", as = "catppuccin" },
	{ "embark-theme/vim", as = "embark" },
	-- Alternative: https://github.com/cpea2506/one_monokai.nvim
	{ "tanvirtin/monokai.nvim" },
	-- Optional Light themes to use
	{ "NLKNguyen/papercolor-theme" },
	{ "junegunn/seoul256.vim" },
	{
		"ramojus/mellifluous.nvim",
		requires = { "rktjmp/lush.nvim" },
	},

	--  +++
	-- Github stuff
	--  +++

	-- Official alternative
	{ "zbirenbaum/copilot.lua" },

	-- +++
	-- Utils
	-- +++
	{ "skywind3000/asyncrun.vim" },
	{ "preservim/vimux" },
	{ "Pocco81/AutoSave.nvim" },
	{ "tpope/vim-surround" },
	{ "machakann/vim-highlightedyank" },
	{ "folke/zen-mode.nvim" },
	{ "folke/twilight.nvim" },
	{ "felipec/vim-sanegx", event = "BufRead" },
	{
		"folke/persistence.nvim",
		event = "BufReadPre", -- this will only start session saving when an actual file was opened
		module = "persistence",
		config = function()
			require("persistence").setup()
		end,
	},
	{
		"gelguy/wilder.nvim", -- Better Wildmenu
	},

	-- Markdown related --
	-- Using telekasten currently as daily driver :-)
	-- { "lervag/wiki.vim" },
	{ "renerocksai/telekasten.nvim" },
	--  Telekasten "alternative"
	--  {
	--    "jakewvincent/mkdnflow.nvim",
	--    branch = "dev",
	--  },
	{ "preservim/vim-markdown" },
	{ "godlygeek/tabular" },
	{ "dkarter/bullets.vim" },
	{
		"iamcco/markdown-preview.nvim",
		run = "cd app && npm install",
		setup = function()
			vim.g.mkdp_filetypes = { "markdown" }
		end,
		ft = { "markdown" },
	},
	{ "ekickx/clipboard-image.nvim" },
	-- TODO test: https://github.com/antonk52/markdowny.nvim
	{
		"antonk52/markdowny.nvim",
		config = function()
			require("markdowny").setup()
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
			"Gedit",
		},
		ft = { "fugitive" },
	},
	{
		"pwntester/octo.nvim",
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope.nvim",
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("octo").setup()
		end,
	},
}

return {
	-- Follow the naming to avoid namespace clashes: plugin -> plugin_config
	bullets = require("user.plugins.bullets_config"),
	nvimtree = require("user.plugins.nvimtree_config"),
	treesitter = require("user.plugins.treesitter_config"),
	vim_markdown = require("user.plugins.vim_markdown_config"),
	vim_markdown_preview = require("user.plugins.vim_markdown_preview_config"),
	fugitive = require("user.plugins.fugitive_config"),
	autosave = require("user.plugins.autosave_config"),
	zen_mode = require("user.plugins.zen_mode_config"),
	twilight = require("user.plugins.twilight_config"),
	catppuccino = require("user.plugins.catppuccino_config"),
	luaSnip = require("user.plugins.luaSnip_config"),
	lsp_signature = require("user.plugins.lsp_signature_config"),
	persistence = require("user.plugins.persistence_config"),
	telekasten = require("user.plugins.telekasten_config"),
	clipboard_image = require("user.plugins.clipboard_image_config"),
	wilder = require("user.plugins.wilder_config"),
	neovide = require("user.plugins.neovide"),
	mellifluous = require("user.plugins.mellifluous_config"),
	-- helm_ls = require("user.plugins.helm_ls_config")
}
