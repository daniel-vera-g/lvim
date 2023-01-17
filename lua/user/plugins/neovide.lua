-- General GUI config
vim.o.guifont = "JetBrainsMono Nerd Font:h18"

-- Specific neovide config
vim.g.neovide_cursor_vfx_mode = "railgun"

-- Allow clipboard copy paste in neovim(Specifically neovide)
-- See: https://github.com/neovide/neovide/issues/1263
vim.g.neovide_input_use_logo = 1
vim.api.nvim_set_keymap("", "<D-v>", "+p<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("!", "<D-v>", "<C-R>+", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<D-v>", "<C-R>+", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<D-v>", "<C-R>+", { noremap = true, silent = true })

-- Full screen with <F10>
local function toggleFullscreen()
	if vim.g.neovide_fullscreen == false then
		vim.cmd("let g:neovide_fullscreen=v:true")
	else
		vim.cmd("let g:neovide_fullscreen=v:false")
	end
end

vim.keymap.set("n", "<F10>", toggleFullscreen, { silent = true })
