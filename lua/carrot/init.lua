local M = {}

M.config = {
	-- Enable/disable all italic styling.
	italics = true,
}

function M.setup(opts)
	-- Merge user config with defaults
	M.config = vim.tbl_deep_extend("force", M.config, opts or {})

	-- Apply the theme
	M.load()
end

function M.load()
	if vim.g.colors_name then
		vim.cmd("hi clear")
	end

	vim.g.colors_name = "carrot"
	vim.o.termguicolors = true

	local colors = require("carrot.colors").setup()
	local highlights = require("carrot.highlights").setup(colors, M.config)
	require("carrot.highlights").highlight(highlights)
end

return M
