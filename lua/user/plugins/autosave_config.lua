local autosave = require("autosave")

-- See: https://github.com/Pocco81/AutoSave.nvim#general
autosave.setup({
	enabled = true,
	execution_message = "",
	events = { "InsertLeave", "TextChanged" },
	conditions = {
		exists = true,
		filename_is_not = {},
		filetype_is_not = { "markdown" },
		modifiable = true,
	},
	write_all_buffers = true,
	on_off_commands = true,
	clean_command_line_interval = 0,
	debounce_delay = 135,
})

-- F5 Keymap to toggle autosave
vim.api.nvim_set_keymap("n", "<F5>", "autosave#toggle()", { noremap = true, silent = true })

return autosave
