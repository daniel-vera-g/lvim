local autosave = require("auto-save")
local clipboard = require("clipboard-image")

-- Get current directory name
local function get_basename()
	local cwd = vim.fn.getcwd()
	if cwd == "" then
		cwd = "~"
	end
	return string.match(cwd, "/(%w+[-]*%w+)$")
end

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

-- ---

-- Workarround, as vim.api does not seem as stable for highlighting
-- https://www.reddit.com/r/neovim/comments/me35u9/comment/h2x5n7u/
vim.cmd([[au VimEnter * highlight LineNr guifg=green]])
