lvim.format_on_save = true
lvim.lint_on_save = true

-- If it's between 9am and 4:30pm, use the light theme
local function is_light()
	local hour = os.date("%H%M")
	return tonumber(hour) >= 900 and tonumber(hour) < 1630
end

if is_light() then
	vim.o.background = "light"
	lvim.colorscheme = "tokyonight"
else
	vim.o.background = "dark"
	vim.g.tokyonight_style = "storm"
	lvim.colorscheme = "tokyonight"
end

lvim.encoding = "utf-8"
lvim.fileencoding = "utf-8"

lvim.leader = ","

lvim.foldmethod = "syntax"

lvim.builtin.dashboard.active = true
lvim.builtin.dap.active = true
lvim.lsp.diagnostics.virtual_text = true
