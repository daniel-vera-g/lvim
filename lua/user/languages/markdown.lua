-- Don't check spell on default
lvim.autocommands.custom_groups = {
	{ "FileType", "markdown", "setlocal nospell" },
}

-- TODO use here `lvim.lang` when implemented
-- See: #1554 & #1249
local null_ls = require "null-ls"
null_ls.register { sources = { null_ls.builtins.formatting.prettier } }
