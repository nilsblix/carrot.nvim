local M = {}

function M.default(palette)
	return vim.tbl_extend("force", {}, palette, {
		bg_float = palette.bg_light,
		bg_line = palette.bg_light,
		bg_sidebar = palette.bg_light,
	})
end

return M
