-- Quickfix before cmp integration
-- Source: https://github.com/LunarVim/LunarVim/issues/1856#issuecomment-954224770
-- Alternative: https://github.com/abzcoding/lvim/blob/377f7ee64bd483f33ac724eba91b581b4d18fba1/lua/user/builtin.lua#L49
-- vim.g.copilot_no_tab_map = true
-- vim.g.copilot_assume_mapped = true
-- vim.g.copilot_tab_fallback = ""
-- local cmp = require("cmp")

-- lvim.builtin.cmp.mapping["<C-f>"] = function(fallback)
-- 	cmp.mapping.abort()
-- 	local copilot_keys = vim.fn["copilot#Accept"]()
-- 	if copilot_keys ~= "" then
-- 		vim.api.nvim_feedkeys(copilot_keys, "i", true)
-- 	else
-- 		fallback()
-- 	end
-- end

-- Using: https://www.lunarvim.org/plugins/02-extra-plugins.html#copilot-lua-and-copilot-cmp
lvim.builtin.cmp.formatting.source_names["copilot"] = "(Copilot)"
table.insert(lvim.builtin.cmp.sources, 1, { name = "copilot" })
