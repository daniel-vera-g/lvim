-- Don't check spell on default
lvim.autocommands.custom_groups = {
	{ "FileType", "markdown", "setlocal nospell" },
}
