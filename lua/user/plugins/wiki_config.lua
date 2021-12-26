vim.g.wiki_root = "~/foam-knowledge"
vim.g.wiki_filetypes = { "md" }
vim.g.wiki_link_extension = ".md"
vim.g.wiki_link_toggles = {
	wiki = function(url, text)
		return "[[" + text + "]]"
	end,
}

-- TODO to avoid overwriting the save whichkey mapping
-- Add Whichkey mappings manually. Breaks "Enter". Set only on filetype?
-- vim.g.wiki_mappings_use_defaults = "none"
