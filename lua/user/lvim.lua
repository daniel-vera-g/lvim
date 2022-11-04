lvim.format_on_save = true
lvim.lint_on_save = true

lvim.encoding = "utf-8"
lvim.fileencoding = "utf-8"

lvim.leader = ","

lvim.foldmethod = "syntax"

lvim.builtin.alpha.active = true
lvim.builtin.dap.active = false
lvim.lsp.diagnostics.virtual_text = true

--- Silence deprecation notice
lvim.builtin.alpha.active = false

require("user.appearance")
