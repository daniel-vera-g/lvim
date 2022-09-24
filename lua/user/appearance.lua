local autosave = require("auto-save")
local clipboard = require("clipboard-image")
local helpers = require("user.helpers.helper")

-- Colorscheme customisations

-- Set to true to use the dark theme
local activate_dark = false

-- Use when the sun is shining ☀️
local is_light = helpers.is_light
if is_light() and activate_dark then
	vim.o.background = "light"
	lvim.colorscheme = "PaperColor"
else
	vim.o.background = "dark"
	require("colorbuddy").colorscheme("cobalt2")
	lvim.colorscheme = "cobalt2"
end

local get_basename = helpers.get_cwd
if get_basename() == "foam-knowledge" then
	-- Format when leaving the buffer to not mess with markdown lists when swtiching between normal/insert mode
	autosave.setup({
		trigger_events = { "BufEnter" },
	})

	-- Root attachment folder
	clipboard.setup({
		markdown = {
			img_dir = "attachments",
			img_dir_txt = "/attachments",
		},
	})
end

-- Workarround, as vim.api does not seem as stable for highlighting
-- https://www.reddit.com/r/neovim/comments/me35u9/comment/h2x5n7u/
vim.cmd([[au VimEnter * highlight LineNr guifg=green]])
