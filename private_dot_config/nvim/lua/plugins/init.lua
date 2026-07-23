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

	-- this opts will extend the default opts
	{
		"nvim-treesitter/nvim-treesitter",
		opts = { ensure_installed = { "html", "css", "bash", "typescript", "tsx", "lua" } },
	},

	{
		"pmizio/typescript-tools.nvim",
		ft = { "typescript", "javascript", "typescriptreact", "javascriptreact" },
		dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
		opts = {},
	},

	{
		-- https://github.com/mrcjkb/rustaceanvim/#minimal-config
		-- I strongly recommend against using rust-analyzer managed by mason.nvim, as version mismatches between
		-- rust-analyzer and your project toolchain can and most likely will lead to subtle issues.
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
