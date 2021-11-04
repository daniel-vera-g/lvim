-- Quickfix before cmp integration
-- Source: https://github.com/LunarVim/LunarVim/issues/1856#issuecomment-954224770
vim.g.copilot_no_tab_map = true
vim.g.copilot_assume_mapped = true
vim.g.copilot_tab_fallback = ""
local cmp = require("cmp")

lvim.builtin.cmp.mapping["<Tab>"] = function(fallback)
	if cmp.visible() then
		cmp.select_next_item()
	else
		local copilot_keys = vim.fn["copilot#Accept"]()
		if copilot_keys ~= "" then
			vim.api.nvim_feedkeys(copilot_keys, "i", true)
		else
			fallback()
		end
	end
end
