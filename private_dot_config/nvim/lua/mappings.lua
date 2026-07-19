require("nvchad.mappings")

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("n", "<leader>yp", function()
	local root = (vim.fs.root(0, ".git") or vim.uv.cwd()) .. "/"
	local abs = vim.api.nvim_buf_get_name(0)
	local rel = (abs:sub(1, #root) == root) and abs:sub(#root + 1) or abs
	vim.fn.setreg("+", rel)
end, { desc = "yank relative path" })

map("n", "grr", function()
	require("telescope.builtin").lsp_references({ initial_mode = "normal" })
end, { buffer = bufnr, desc = "telescope lsp references" })

vim.keymap.del("n", "<C-w>d")
vim.keymap.del("n", "<C-w><C-d>")
map("n", "<leader>dd", vim.diagnostic.open_float, { desc = "show diagnostic" })

-- delete nvchad keymap
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvchad/mappings.lua#L29
vim.keymap.del("n", "<leader>ds")
map("n", "<leader>ds", function()
	require("telescope.builtin").diagnostics({ bufnr = 0, initial_mode = "normal" })
end, { desc = "telescope diagnostics" })
