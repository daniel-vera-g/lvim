vim.g.wiki_root = "~/foam-knowledge"
vim.g.wiki_filetypes = { "md" }
vim.g.wiki_link_extension = ".md"
vim.g.wiki_link_toggles = {
	wiki = function(url, text)
		return "[[" + text + "]]"
	end,
}
