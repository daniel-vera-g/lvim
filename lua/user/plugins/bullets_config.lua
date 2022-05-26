-- NOTE: Apparently the silent mode for the <CR> mapping does not work properly in neovim?
-- https://github.com/dkarter/bullets.vim/blob/master/plugin/bullets.vim#L971
-- https://github.com/dkarter/bullets.vim/blob/master/doc/bullets.txt#L277
-- https://github.com/neovim/neovim/issues/17758
vim.g.bullets_enabled_file_types = {
	"markdown",
	"text",
	"gitcommit",
	"md",
}
