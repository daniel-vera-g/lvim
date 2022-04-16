local formatters = require("lvim.lsp.null-ls.formatters")

formatters.setup({
	{
		exe = "gofmt",
		filetypes = { "go", "go.mod" },
	},
	{
		exe = "goimports",
		filetypes = { "go", "go.mod" },
	},
	{
		exe = "prettier",
		filetypes = { "markdown", "md", "javascript", "json", "typescript" },
	},
	{
		exe = "stylua",
		filetypes = { "lua" },
	},
})
