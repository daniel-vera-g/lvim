vim.g.vim_markdown_folding_disabled = 1
vim.g.vim_markdown_auto_insert_bullets = 1
-- Fix issue with indentation of lists
vim.cmd("autocmd filetype markdown set indentexpr=")
