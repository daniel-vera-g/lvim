-- Be able to use <Ctrl+T> to toggle terminal
-- In general, use neovim lsp for lsp and vim_go for go related features(Run, Compile,..)
vim.g.go_def_mapping_enabled = 0
vim.g.go_doc_keywordprg_enabled = 0

-- Map F10 to go test
vim.api.nvim_set_keymap("n", "<F10>", "<cmd>GoTest<cr>", { noremap = true, silent = true })
