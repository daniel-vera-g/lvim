-- Spaces for tabs
vim.opt.tabstop = 2 -- number of spaces used as tab for file(Number of visual spaces per TAB)
vim.opt.softtabstop = 2 -- number of spaces used as tab for editing(Number of spaces in TAB when editing)
vim.opt.shiftwidth = 2 -- number of spaces used to autoindent(Number of spaces indented when reindent operations (>> and <<) are used)
vim.opt.expandtab = true -- expand tabs into spaces(Convert TABs to spaces)
vim.opt.smarttab = true -- smart tabulation and backspace(Enable intelligent tabbing and spacing for indentation and alignment)
vim.opt.bs = "indent,eol,start" -- allow backspacing over everything
vim.opt.ai = true -- Auto indent

vim.opt.cmdheight = 1
vim.opt.relativenumber = true
vim.opt.wrap = true

vim.opt.spelllang = "de,en"
vim.opt.spell = true

vim.opt.cursorline = true
vim.opt.cursorcolumn = true

vim.diagnostic.config({ virtual_text = true })
