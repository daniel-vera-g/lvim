lvim.format_on_save = true
lvim.lint_on_save = true

lvim.encoding = "utf-8"
lvim.fileencoding = "utf-8"

lvim.leader = ","

lvim.foldmethod = "syntax"

lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"

lvim.builtin.terminal.active = true
lvim.builtin.terminal.open_mapping = "<C-t>"

lvim.builtin.dap.active = true

lvim.lsp.diagnostics.virtual_text = true

lvim.colorscheme = "sweetie"
-- lvim.colorscheme = "embark"

-- Some manual code adjustments for Lvim...
require("user.helpers.helper")
