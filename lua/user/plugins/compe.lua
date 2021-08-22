-- Also trigger snippet completion using <C-Space>
lvim.builtin.compe.keymap.values.insert_mode = {
  ["<C-Space>"] = { "compe#confirm('CR')", { silent = true, noremap = true, expr = true } },
}
