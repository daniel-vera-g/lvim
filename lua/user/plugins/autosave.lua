local autosave = require("autosave")

-- See: https://github.com/Pocco81/AutoSave.nvim#general
autosave.setup(
    {
        enabled = true,
        execution_message = "AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"),
        events = {"InsertLeave", "TextChanged"},
        write_all_buffers = false,
        on_off_commands = true,
        clean_command_line_interval = 0,
    }
)

return autosave
