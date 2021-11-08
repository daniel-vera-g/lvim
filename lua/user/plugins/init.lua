lvim.plugins = {
	-- languages
	{ "fatih/vim-go" },

	-- LSP related
	-- Cool signatures while typing
	{
		"ray-x/lsp_signature.nvim",
		event = "BufRead",
		config = function()
			require("lsp_signature").on_attach()
		end,
	},
	-- a tree like view for symbols
	{
		"simrat39/symbols-outline.nvim",
		cmd = "SymbolsOutline",
	},
	-- Diagnostics, references, telescope results, ...
	{ "folke/trouble.nvim" },

	--  Colorschemes
	{ "lunarvim/colorschemes" },
	{ "folke/tokyonight.nvim" },
	{ "Pocco81/Catppuccino.nvim" },

	-- Github stuff
	{ "github/copilot.vim" },
	{
		"pwntester/octo.nvim",
		config = function()
			require("octo").setup()
		end,
	},

	-- Utils
	{ "jbyuki/venn.nvim" },
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

	-- Markdown related
	{ "lervag/wiki.vim" },
	{ "plasticboy/vim-markdown" },
	{ "godlygeek/tabular" },
	{ "dkarter/bullets.vim" },
	{
		"iamcco/markdown-preview.nvim",
		run = "cd app && npm install",
		ft = "markdown",
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
}

return {
	-- Follow the naming to avoid namespace clashes: plugin -> plugin_config
	bullets = require("user.plugins.bullets_config"),
	nvimtree = require("user.plugins.nvimtree_config"),
	treesitter = require("user.plugins.treesitter_config"),
	vim_markdown = require("user.plugins.vim_markdown_config"),
	vim_markdown_preview = require("user.plugins.vim_markdown_preview_config"),
	terminal = require("user.plugins.terminal_config"),
	fugitive = require("user.plugins.fugitive_config"),
	dashboard = require("user.plugins.dashboard_config"),
	wiki = require("user.plugins.wiki_config"),
	autosave = require("user.plugins.autosave_config"),
	zen_mode = require("user.plugins.zen_mode_config"),
	twilight = require("user.plugins.twilight_config"),
	catppuccino = require("user.plugins.catppuccino_config"),
	luaSnip = require("user.plugins.luaSnip_config"),
	venn = require("user.plugins.venn_config"),
	copilot = require("user.plugins.copilot_config"),
	lsp_signature = require("user.plugins.lsp_signature_config"),
	persistence = require("user.plugins.persistence_config"),
	vim_go = require("user.plugins.vim_go_config"),
}
