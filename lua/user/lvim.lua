local helpers = require("user.helpers.helper")
local get_basename = helpers.get_cwd

lvim.format_on_save = true
lvim.lint_on_save = true

if get_basename() == "foam-knowledge" then
	lvim.colorscheme = "catppuccin"
else
	lvim.colorscheme = "tokyonight"
end

-- TODO use in summer or when sun is shining
-- if is_light() and get_cwd() ==  then
-- 	vim.o.background = "light"
-- 	lvim.colorscheme = "PaperColor"
-- 	-- lvim.colorscheme = "codemonkey"
-- else
-- 	vim.o.background = "dark"
-- 	vim.g.tokyonight_style = "storm"
-- 	lvim.colorscheme = "tokyonight"
-- end

lvim.encoding = "utf-8"
lvim.fileencoding = "utf-8"

lvim.leader = ","

lvim.foldmethod = "syntax"

lvim.builtin.dashboard.active = true
lvim.builtin.dap.active = true
lvim.lsp.diagnostics.virtual_text = true
