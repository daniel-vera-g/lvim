local autosave = require("autosave")

-- See: https://github.com/Pocco81/AutoSave.nvim#general
autosave.setup({
	enabled = true,
	execution_message = "",
	events = { "InsertLeave" },
	write_all_buffers = false,
	on_off_commands = true,
	clean_command_line_interval = 0,
})

return autosave
