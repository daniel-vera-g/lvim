-- Don't check spell on default
lvim.autocommands.custom_groups = {
	{ "FileType", "markdown", "setlocal nospell" },
}

lvim.lang.markdown.formatters = { { exe = "prettier" } }
