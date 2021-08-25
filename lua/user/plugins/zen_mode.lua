require("zen-mode").setup {
  plugins = {
    options = {
      enabled = true,
      ruler = false, -- disables the ruler text in the cmd line area
      showcmd = false, -- disables the command in the last line of the screen
    },
    twilight = { enabled = true }, -- enable to start Twilight when zen mode opens
    gitsigns = { enabled = true }, -- disables git signs
    tmux = { enabled = true }, -- disables the tmux statusline
    -- this will change the font size on kitty when in zen mode
    kitty = {
      enabled = true,
      font = "+4", -- font size increment
    },
  }
}
