require("nvchad.options")

-- add yours here!

local o = vim.o
o.cursorlineopt = "both" -- to enable cursorline!

vim.opt.relativenumber = true

local diag_float_winid = nil
vim.diagnostic.config({
	jump = {
		on_jump = function(_, bufnr)
			if diag_float_winid and vim.api.nvim_win_is_valid(diag_float_winid) then
				vim.api.nvim_win_close(diag_float_winid, true)
			end
			_, diag_float_winid = vim.diagnostic.open_float()
		end,
	},
})
