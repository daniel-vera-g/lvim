local autosave = require("autosave")

-- See: https://github.com/Pocco81/AutoSave.nvim#general
autosave.setup({
	enabled = false,
	execution_message = "",
	-- Full list of events: https://tech.saigonist.com/b/code/list-all-vim-script-events.html
	-- Example: Save, when changing the buffer. Otherwise, save manually to f.ex format the buffer.
	-- events = { "BufLeave" },
	events = { "InsertLeave", "TextChanged" },
	conditions = {
		exists = true,
		-- filetype_is_not = { "markdown" },
		modifiable = true,
	},
	write_all_buffers = true,
	on_off_commands = true,
	clean_command_line_interval = 0,
	debounce_delay = 135,
})

-- F4 Keymap to toggle autosave
vim.api.nvim_set_keymap("n", "<F4>", ":ASToggle<CR>", { noremap = true })

return autosave
