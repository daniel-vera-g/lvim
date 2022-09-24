local autosave = require("auto-save")

-- See: https://github.com/Pocco81/AutoSave.nvim#general
autosave.setup({
	enabled = false,
	execution_message = {
		message = "",
	},
	-- Full list of events: https://tech.saigonist.com/b/code/list-all-vim-script-events.html
	-- Example: Save, when changing the buffer. Otherwise, save manually to f.ex format the buffer.
	-- events = { "BufLeave" },
	trigger_events = { "InsertLeave", "TextChanged" },
	write_all_buffers = true,
	debounce_delay = 135,
})

-- F4 Keymap to toggle autosave
vim.api.nvim_set_keymap("n", "<F4>", ":ASToggle<CR>", { noremap = true })

return autosave
