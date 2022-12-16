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
	{ "towolf/vim-helm" },

	-- LSP related ---

	-- Cool signatures while typing
	{
		"ray-x/lsp_signature.nvim",
		event = "BufRead",
		config = function()
			require("lsp_signature").setup()
		end,
	},
	-- -- a tree like view for symbols
	{
		"simrat39/symbols-outline.nvim",
		cmd = "SymbolsOutline",
	},
	-- Diagnostics, references, telescope results, ...
	{
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("trouble").setup({})
		end,
	},

	--  +++
	--  Colorschemes
	--  +++
	--- Dark
	{ "lunarvim/colorschemes" },
	{ "folke/tokyonight.nvim" },
	{ "catppuccin/nvim", as = "catppuccin" },
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
	{ "github/copilot.vim" },

	-- +++
	-- Utils
	-- +++
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

	-- +++
	-- Markdown related
	-- +++
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
}

return {
	-- Follow the naming to avoid namespace clashes: plugin -> plugin_config
	bullets = require("user.plugins.bullets_config"),
	nvimtree = require("user.plugins.nvimtree_config"),
	treesitter = require("user.plugins.treesitter_config"),
	vim_markdown = require("user.plugins.vim_markdown_config"),
	vim_markdown_preview = require("user.plugins.vim_markdown_preview_config"),
	fugitive = require("user.plugins.fugitive_config"),
	-- wiki = require("user.plugins.wiki_config"),
	-- mkdnflow = require("user.plugins.mkdnflow_config"),
	autosave = require("user.plugins.autosave_config"),
	-- zen_mode = require("user.plugins.zen_mode_config"),
	twilight = require("user.plugins.twilight_config"),
	catppuccino = require("user.plugins.catppuccino_config"),
	luaSnip = require("user.plugins.luaSnip_config"),
	copilot = require("user.plugins.copilot_config"),
	lsp_signature = require("user.plugins.lsp_signature_config"),
	persistence = require("user.plugins.persistence_config"),
	telekasten = require("user.plugins.telekasten_config"),
	clipboard_image = require("user.plugins.clipboard_image_config"),
	wilder = require("user.plugins.wilder_config"),
	neovide = require("user.plugins.neovide"),
	mellifluous = require("user.plugins.mellifluous_config"),
}
