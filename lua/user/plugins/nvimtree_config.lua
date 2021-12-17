lvim.builtin.nvimtree.setup.view.side = "right"
lvim.builtin.nvimtree.show_icons.git = 0
lvim.builtin.nvimtree.nvim_tree_disable_netrw = 0
lvim.builtin.nvimtree.nvim_tree_hijack_netrw = 0

require("nvim-tree").setup({
	git = {
		enable = true,
		ignore = true,
		timeout = 500,
	},
})
