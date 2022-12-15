local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

----------------------
-- General keybindings
---------------------.
-- keymappings [view all the defaults by pressing <leader>Lk]

-- Yank remaining line
keymap("n", "Y", "yg_", { noremap = true })

-- Some spelling keymaps
keymap("n", "<F6>", ":set nospell<CR>", { noremap = true })
keymap("n", "<F7>", ":set spelllang=de spellfile=~/.config/lvim/spell/de.utf-8.add spell<CR>", { noremap = true })

-- no :ex mode
vim.cmd("nnoremap Q <nop>")

-- Keep the yanked stuff in the clipboard for pasting
-- Seen on ChrisAtMachine: https://youtu.be/435-amtVYJ8
keymap("v", "p", '"_dP', opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Exit insert mode fast
keymap("i", "jk", "<esc>", { noremap = true, silent = true })
keymap("i", "kj", "<esc>", { noremap = true, silent = true })

---------------------
-- Which Key bindings
---------------------

-- See: https://github.com/LunarVim/LunarVim/pull/1287
-- Finding files, this will search all files including the hidden ones, but the folders specified below.
lvim.builtin.which_key.mappings["f"] = {
	"<cmd>:lua require'telescope.builtin'.find_files({ find_command = {'rg', '--files', '--hidden', '-g', '!.git', '-g', '!node_modules', '-g', '!.next' }})<CR>",
	"Find Files",
}
-- Finding text, this will search all text in all the files in the current workspace including hidden files, but the folders and files specified below.
lvim.builtin.which_key.mappings["rg"] = {
	"<cmd>:lua require'telescope.builtin'.live_grep({ vimgrep_arguments = { 'rg', '--hidden','--color=never', '--no-heading', '--with-filename', '--line-number', '--column', '--smart-case', '-u', '-g', '!yarn.lock', '-g', '!.git', '-g', '!node_modules', '-g', '!.next' } })<CR>",
	"Find Text",
}

-- Save all instead of just current file
lvim.builtin.which_key.mappings["w"] = {
	"<cmd>:wa<CR>",
	"Save All",
}

-- Save all and quit instead of quitting without saving
-- Also save the state of all buffers to be able to restore it later
lvim.builtin.which_key.mappings["q"] = {
	"<cmd>:wqall<CR>",
	"Save All and Quit",
}

---------------------
-- Plugin related keybindings
---------------------

lvim.builtin.which_key.mappings["t"] = {
	name = "+Trouble",
	r = { "<cmd>Trouble lsp_references<cr>", "References" },
	f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
	d = { "<cmd>Trouble document_diagnostics<cr>", "Diagnostics" },
	q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
	l = { "<cmd>Trouble loclist<cr>", "LocationList" },
	w = { "<cmd>Trouble workspace_diagnostics<cr>", "Workspace Diagnostics" },
}
