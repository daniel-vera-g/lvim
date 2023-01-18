-- Vim built in config
reload("user.config")

reload("user.keybindings")
reload("user.plugins")
reload("user.formatters")
reload("user.linters")
reload("user.lsp")

-- Lunarvim configuration
reload("user.lvim")

-- Further Plugins configuration to load
table.insert(lvim.plugins, {
	"zbirenbaum/copilot-cmp",
	event = "InsertEnter",
	requires = { "zbirenbaum/copilot.lua" },
	config = function()
		vim.defer_fn(function()
			require("copilot").setup()
			require("copilot_cmp").setup()
		end, 100)
	end,
})
