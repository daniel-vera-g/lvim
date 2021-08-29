local null_ls = require("null-ls")

-- local sources = { null_ls.builtins.diagnostics.markdownlint }
-- null_ls.config({ sources = sources })

-- lvim.lsp.diagnostics.virtual_text=false

-- TODO
-- Don't pollute line with diagnostics
-- Show them below at the command line
-- -- Taken from: https://github.com/mjlbach/defaults.nvim/pull/26/files
function PrintDiagnostics(opts, bufnr, line_nr, client_id)
  opts = opts or {}

  bufnr = bufnr or 0
  line_nr = line_nr or (vim.api.nvim_win_get_cursor(0)[1] - 1)

  local line_diagnostics = vim.lsp.diagnostic.get_line_diagnostics(bufnr, line_nr, opts, client_id)
  if vim.tbl_isempty(line_diagnostics) then return end

  local diagnostic_message = ""
  for i, diagnostic in ipairs(line_diagnostics) do
    diagnostic_message = diagnostic_message .. string.format("%d: %s", i, diagnostic.message or "")
    if i ~= #line_diagnostics then
      diagnostic_message = diagnostic_message .. "\n"
    end
  end
  --print only shows a single line, echo blocks requiring enter, pick your poison
  print(diagnostic_message)
end

-- lvim.autocommands.custom_groups = {
-- --    -- On entering a lua file, set the tab spacing and shift width to 8
--    -- { "BufWinEnter", "md", "lua lvim.lsp.diagnostics.virtual_text=false" },
--    { "BufWinEnter", "md", "lua PrintDiagnostics()" },
--   }
vim.cmd [[ autocmd BufWinEnter * lua PrintDiagnostics() ]]

