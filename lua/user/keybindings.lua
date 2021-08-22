-- General keybindings
-- keymappings [view all the defaults by pressing <leader>Lk]
vim.api.nvim_set_keymap('n', 'Y', 'yg_', {noremap=true})

-- Some spelling keymaps
vim.api.nvim_set_keymap('n', '<F8>', ':setlocal spelllang=de spellfile=~/.config/lvim/spell/de.utf-8.add spell<CR>', {noremap=true})
vim.api.nvim_set_keymap('n', '<F7>', ':setlocal nospell<CR>', {noremap=true})
