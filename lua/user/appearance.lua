local autosave = require("autosave")
local helpers = require("user.helpers.helper")

-- Colorscheme customisations

local get_basename = helpers.get_cwd
if get_basename() == "foam-knowledge" then
	lvim.colorscheme = "catppuccin"
	-- Format when leaving the buffer to not mess with markdown lists when swtiching between normal/insert mode
	autosave.setup({
		events = { "BufEnter" },
	})
else
	lvim.colorscheme = "tokyonight"
end

-- Use in summer or when sun is shining ☀️
local is_light = helpers.is_light
if is_light() then
	vim.o.background = "light"
	lvim.colorscheme = "PaperColor"
else
	vim.o.background = "dark"
	vim.g.tokyonight_style = "storm"
	lvim.colorscheme = "tokyonight"
end

-- Workarround, as vim.api does not seem as stable for highlighting
-- https://www.reddit.com/r/neovim/comments/me35u9/comment/h2x5n7u/
vim.cmd([[au VimEnter * highlight LineNr guifg=green]])
