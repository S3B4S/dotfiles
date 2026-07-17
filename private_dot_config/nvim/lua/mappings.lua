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
