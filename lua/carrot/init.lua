local M = {}

M.config = {
	-- Enable/disable all italic styling.
	italics = true,
}

function M.setup(opts)
	-- Merge user config with defaults
	M.config = vim.tbl_deep_extend("force", M.config, opts or {})

	-- Apply the theme
	require("carrot.theme").setup()
end

function M.load()
	M.setup()
end

return M
