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

-- TODO check, as this only work for the current buffer
-- When opening a new buffer, the spelling keeps being on

-- Spell related config
local isSpellOn = false
vim.opt.spell = isSpellOn
vim.opt.spelllang = "en_us,de_de"
-- To download spell files
lvim.builtin.nvimtree.setup.disable_netrw = false

-- Customization for markdown
-- Overwrite auto commands
if isSpellOn == false then
	lvim.autocmds = {
		{
			"FileType",
			{
				pattern = "markdown",
				command = "set nospell",
			},
		},
		{
			"FileType",
			{
				pattern = "markdown",
				command = "setlocal nospell",
			},
		},
	}
else
	-- Otherwise the first file does not get spell checked
	lvim.autocmds = {
		{
			"BufWinEnter",
			{
				pattern = { "*.md" },
				command = "set spell",
			},
		},
	}
end
