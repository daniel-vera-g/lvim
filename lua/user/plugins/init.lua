lvim.plugins = {
	-- languages
	{ "fatih/vim-go" },

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

	-- LSP related
	-- TODO configure properly, so it does not mess arround in go
	-- Cool signature(F.ex Params & co)
	-- {
	-- 	"ray-x/lsp_signature.nvim",
	-- 	event = "BufRead",
	-- 	config = function()
	-- 		require("lsp_signature").on_attach()
	-- 	end
	-- },
	-- Diagnostics, references, telescope results, ...
	{ "folke/trouble.nvim" },

	-- Markdown related
	{ "lervag/wiki.vim" },
	{ "plasticboy/vim-markdown" },
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
	bullets = require("user.plugins.bullets"),
	nvimtree = require("user.plugins.nvimtree"),
	treesitter = require("user.plugins.treesitter"),
	vim_markdown = require("user.plugins.vim_markdown"),
	vim_markdown_preview = require("user.plugins.vim_markdown_preview"),
	terminal = require("user.plugins.terminal"),
	fugitive = require("user.plugins.fugitive"),
	dashboard = require("user.plugins.dashboard"),
	vsnips = require("user.plugins.vsnips"),
	wiki = require("user.plugins.wiki"),
	autosave = require("user.plugins.autosave_config"),
	zen_mode = require("user.plugins.zen_mode"),
	twilight = require("user.plugins.twilight_config"),
	catppuccino = require("user.plugins.catppuccino_config"),
	luaSnip = require("user.plugins.luaSnip"),
	venn = require("user.plugins.venn"),
	copilot = require("user.plugins.copilot_config"),
}
