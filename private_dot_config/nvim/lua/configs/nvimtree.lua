local M = {
	view = {
		adaptive_size = true,
	},
	renderer = {
		highlight_opened_files = "all",
		special_files = { "Cargo.toml", "Makefile" }, -- drop README.md
	},
}

return M
