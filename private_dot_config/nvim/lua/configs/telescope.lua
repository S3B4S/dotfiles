return {
	defaults = {
		path_display = { shorten = 5, "filename_first" },
		mappings = {
			i = {
				["<C-j>"] = function(...)
					return require("telescope.actions").move_selection_next(...)
				end,
				["<C-k>"] = function(...)
					return require("telescope.actions").move_selection_previous(...)
				end,
			},
		},
	},
}
