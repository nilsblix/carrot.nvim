local M = {}

function M.highlight(highlights)
	for hl, spec in pairs(highlights) do
		vim.api.nvim_set_hl(0, hl, spec)
	end
end

function M.setup(colors, config)
	local highlights = {}
	for _, name in ipairs({ "editor", "syntax", "treesitter", "lsp", "plugins" }) do
		local mod = require("carrot.highlights." .. name)
		for hl, spec in pairs(mod.setup(colors, config)) do
			highlights[hl] = spec
		end
	end
	return highlights
end

return M
