local catppuccino = require("catppuccino")

catppuccino.setup(
  {
    transparency = false,
    styles = {
      comments = "italic",
      functions = "italic",
      keywords = "italic",
      strings = "NONE",
      variables = "NONE",
    },
    integrations = {
      treesitter = true,
      native_lsp = {
        enabled = true,
        styles = {
          errors = "italic",
          hints = "italic",
          warnings = "italic",
          information = "italic"
        }
      },
      lsp_trouble = false,
      lsp_saga = false,
      gitgutter = false,
      gitsigns = true,
      telescope = true,
      -- TODO setting this to true conflicts with nvimtree
      -- See: https://github.com/daniel-vera-g/lvim/issues/1
      nvimtree = false,
      which_key = true,
      indent_blankline = false,
      dashboard = true,
      neogit = false,
      vim_sneak = false,
      fern = false,
      barbar = true,
      bufferline = true,
      markdown = true,
    }
  }
)
catppuccino.load()
