-- General keybindings
-- keymappings [view all the defaults by pressing <leader>Lk]

-- Yank remaining line
vim.api.nvim_set_keymap('n', 'Y', 'yg_', {noremap=true})

-- Some spelling keymaps
vim.api.nvim_set_keymap('n', '<F8>', ':setlocal spelllang=de spellfile=~/.config/lvim/spell/de.utf-8.add spell<CR>', {noremap=true})
vim.api.nvim_set_keymap('n', '<F7>', ':setlocal nospell<CR>', {noremap=true})

-- no :ex mode
vim.cmd("nnoremap Q <nop>")

-- See: https://github.com/LunarVim/LunarVim/pull/1287
-- Finding files, this will search all files including the hidden ones, but the folders specified below.
lvim.builtin.which_key.mappings["f"] = { "<cmd>:lua require'telescope.builtin'.find_files({ find_command = {'rg', '--files', '--hidden', '-g', '!.git', '-g', '!node_modules', '-g', '!.next' }})<CR>", "Find Files" }
-- Finding text, this will search all text in all the files in the current workspace including hidden files, but the folders and files specified below.
lvim.builtin.which_key.mappings["rg"] = { "<cmd>:lua require'telescope.builtin'.live_grep({ vimgrep_arguments = { 'rg', '--hidden','--color=never', '--no-heading', '--with-filename', '--line-number', '--column', '--smart-case', '-u', '-g', '!yarn.lock', '-g', '!.git', '-g', '!node_modules', '-g', '!.next' } })<CR>", "Find Text" }
