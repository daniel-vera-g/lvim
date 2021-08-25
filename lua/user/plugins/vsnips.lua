lvim.vsnip_dir = "~/.config/lvim/snippets/"
vim.api.nvim_set_keymap('i', '<C-s>', "vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-s>'", {expr = true})
vim.api.nvim_set_keymap('s', '<C-s>', "vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-s>'", {expr = true})
