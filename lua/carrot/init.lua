local M = {}

M.config = {
	-- Enable/disable all italic styling.
	italics = true,
    -- Enable/disable all bold styling.
    bold = true,
}

M.setup = function(opts)
	-- Merge user config with defaults
	M.config = vim.tbl_deep_extend("force", M.config, opts or {})

	vim.cmd("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

    local palette = require("carrot.colors").palette

	-- Apply the theme
    local ts = require("carrot.ts").get(M.config, palette)
    for group, spec in pairs(ts) do
        vim.api.nvim_set_hl(0, group, spec)
    end

    local syntax = require("carrot.syntax").get(M.config, palette)
    for group, spec in pairs(syntax) do
        vim.api.nvim_set_hl(0, group, spec)
    end

    local lsp = require("carrot.lsp").get(M.config, palette)
    for group, spec in pairs(lsp) do
        vim.api.nvim_set_hl(0, group, spec)
    end
end

M.load = function()
    M.setup(M.config)
end

return M
