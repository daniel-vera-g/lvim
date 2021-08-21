-- TODO remove ',' and use <leader> instead when bug seems resolved
vim.api.nvim_set_keymap('n', ',gam', ':Gwrite<CR>:Gcommit<CR>', {noremap=true})
vim.api.nvim_set_keymap('n', ',gs', ':Git<CR>', {noremap=true})
