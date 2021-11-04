-- Map F9 to toggle persistence
vim.api.nvim_set_keymap("", "<F5>", ":lua require('persistence').load()<CR>", { noremap = true })
