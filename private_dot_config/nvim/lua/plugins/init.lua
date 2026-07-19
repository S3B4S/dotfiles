return {
	{
		"stevearc/conform.nvim",
		event = "BufWritePre", -- uncomment for format on save
		opts = require("configs.conform"),
	},

	{
		"neovim/nvim-lspconfig",
		config = function()
			require("configs.lspconfig")
		end,
	},

	{
		"nvim-telescope/telescope.nvim",
		opts = require("configs.telescope"),
	},

	{
		"nvim-tree/nvim-tree.lua",
		opts = require("configs.nvimtree"),
	},

	{
		"mrcjkb/rustaceanvim",
		-- To avoid being surprised by breaking changes,
		-- I recommend you set a version range
		version = "^9",
		-- This plugin implements proper lazy-loading (see :h lua-plugin-lazy).
		-- No need for lazy.nvim to lazy-load it.
		lazy = false,
	},

	-- test new blink
	-- { import = "nvchad.blink.lazyspec" },

	-- {
	-- 	"nvim-treesitter/nvim-treesitter",
	-- 	opts = {
	-- 		ensure_installed = {
	-- 			"vim", "lua", "vimdoc",
	--      "html", "css"
	-- 		},
	-- 	},
	-- },
}
