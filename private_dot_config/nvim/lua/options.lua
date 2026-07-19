require("nvchad.options")

-- add yours here!

local o = vim.o
o.cursorlineopt = "both" -- to enable cursorline!

vim.opt.relativenumber = true

local function close_existing_float(bufnr)
	local winid = vim.b[bufnr].lsp_floating_preview
	if winid and vim.api.nvim_win_is_valid(winid) then
		vim.api.nvim_win_close(winid, true)
	end
end

vim.diagnostic.config({
	jump = {
		on_jump = function(_, bufnr)
			close_existing_float(bufnr)
			vim.diagnostic.open_float()
		end,
	},
})
