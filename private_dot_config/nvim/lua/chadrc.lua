-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "catppuccin",

	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },
}

M.nvdash = { load_on_startup = true }

M.ui = {
	statusline = {
		modules = {
			file = function()
				local bufname = vim.api.nvim_buf_get_name(0)
				if bufname == "" then
					return "%#St_file#  Empty "
				end

				local root = (vim.fs.root(0, ".git") or vim.uv.cwd()) .. "/"
				local rel = (bufname:sub(1, #root) == root) and bufname:sub(#root + 1) or bufname

				local max_len = math.min(60, math.floor(vim.o.columns * 0.3))
				if #rel > max_len then
					local segments = {}
					for seg in rel:gmatch("[^/]+") do
						table.insert(segments, seg)
					end

					local out = table.remove(segments) -- filename, always kept whole
					for i = #segments, 1, -1 do
						local candidate = segments[i] .. "/" .. out
						if #candidate + 2 > max_len then
							break
						end
						out = candidate
					end

					rel = (out ~= rel) and ("…/" .. out) or rel
				end

				local icon = "󰈚"
				local devicons_ok, devicons = pcall(require, "nvim-web-devicons")
				if devicons_ok then
					icon = devicons.get_icon(vim.fn.fnamemodify(bufname, ":t")) or icon
				end

				local sep_style = require("nvconfig").ui.statusline.separator_style
				local sep_icons = require("nvchad.stl.utils").separators
				local sep_r = (type(sep_style) == "table" and sep_style.right) or sep_icons[sep_style].right

				return "%#St_file# " .. icon .. " " .. rel .. " %#St_file_sep#" .. sep_r
			end,
		},
	},
}

return M
