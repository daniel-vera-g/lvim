local formatters = require("lvim.lsp.null-ls.formatters")

formatters.setup({
	{
		exe = "gofmt",
		filetypes = { "go", "go.mod" },
	},
	{
		exe = "prettier",
		filetypes = { "markdown", "md", "javascript", "json" },
	},
	{
		exe = "stylua",
		filetypes = { "lua" },
	},
})
