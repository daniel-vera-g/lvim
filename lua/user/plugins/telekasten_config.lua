local home = vim.fn.expand("~/foam-knowledge")
require("telekasten").setup({
	home = home,
	dailies = home .. "/" .. "journal",
	weeklies = home .. "/" .. "weekly",
	templates = home .. "/" .. "templates",

	-- image subdir for pasting
	-- subdir name
	-- or nil if pasted images shouldn't go into a special subdir
	image_subdir = "attachments",

	-- markdown file extension
	extension = ".md",

	-- following a link to a non-existing note will create it
	follow_creates_nonexisting = true,
	dailies_create_nonexisting = true,
	weeklies_create_nonexisting = true,

	-- template for new notes (new_note, follow_link)
	-- set to `nil` or do not specify if you do not want a template
	template_new_note = home .. "/" .. "templates/template.md",

	-- template for newly created daily notes (goto_today)
	-- set to `nil` or do not specify if you do not want a template
	template_new_daily = home .. "/" .. "templates/daily.md",

	-- template for newly created weekly notes (goto_thisweek)
	-- set to `nil` or do not specify if you do not want a template
	-- template_new_weekly= home .. '/' .. 'templates/weekly.md',

	-- image link style
	-- wiki:     ![[image name]]
	-- markdown: ![](image_subdir/xxxxx.png)
	image_link_style = "markdown",

	-- integrate with calendar-vim
	plug_into_calendar = false,
	calendar_opts = {
		-- calendar week display mode: 1 .. 'WK01', 2 .. 'WK 1', 3 .. 'KW01', 4 .. 'KW 1', 5 .. '1'
		weeknm = 4,
		-- use monday as first day of week: 1 .. true, 0 .. false
		calendar_monday = 1,
		-- calendar mark: where to put mark for marked days: 'left', 'right', 'left-fit'
		calendar_mark = "left-fit",
	},

	-- telescope actions behavior
	close_after_yanking = false,
	insert_after_inserting = true,
})

-- Mappings

lvim.builtin.which_key.mappings["z"] = {
	name = "Telekasten",
	g = { "<cmd>lua require('telekasten').find_notes()<cr>", "Find notes" },
	f = { "<cmd>lua require('telekasten').search_notes()<cr>", "Search notes" },
	z = { "<cmd>lua require('telekasten').follow_link()<cr>", "Follow link" },
	T = { "<cmd>lua require('telekasten').goto_today()<cr>", "Go to today" },
	n = { "<cmd>lua require('telekasten').new_note()<cr>", "New note" },
}

vim.api.nvim_set_keymap("i", "[[", "<ESC>:lua require('telekasten').insert_link()<CR>", { noremap = true })
