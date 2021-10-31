vim.g.vim_markdown_auto_insert_bullets = 1
vim.g.vim_markdown_folding_level = 2
vim.g.vim_markdown_folding_disabled = 1

vim.g.vim_markdown_conceal = 1
vim.g.vim_markdown_conceal_code_blocks = 0
-- Needed for conceal to work
vim.opt.conceallevel = 2

vim.g.vim_markdown_frontmatter = 1
vim.g.vim_markdown_json_frontmatter = 1
vim.g.vim_markdown_strikethrough = 1

-- Don't mess with indentation in bulletlists
-- Found here: https://stackoverflow.com/a/46937498/7507544
vim.g.vim_markdown_new_list_item_indent = 0
-- Fix issue with indentation of lists
vim.cmd("autocmd filetype markdown set indentexpr=")
