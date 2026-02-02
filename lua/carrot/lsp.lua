local M = {}

M.get = function(_, palette)
    local p = palette
	return {
		DiagnosticError             = { fg = p.red300 },
		DiagnosticWarn              = { fg = p.yellow200 },
		DiagnosticInfo              = { fg = p.base00 },
		DiagnosticHint              = { fg = p.cyan400 },
		DiagnosticUnderlineError    = { undercurl = true, fg = p.red300 },
		DiagnosticUnderlineWarn     = { undercurl = true, fg = p.yellow200 },
		DiagnosticUnderlineInfo     = { undercurl = true, fg = p.base00 },
		DiagnosticUnderlineHint     = { undercurl = true, fg = p.cyan400 },

		["@lsp.type.string"]        = { link = "@string" },
		["@lsp.type.number"]        = { link = "@number" },
		["@lsp.type.boolean"]       = { link = "@boolean" },
		["@lsp.type.namespace"]     = { link = "@module" },
		["@lsp.type.type"]          = { link = "@type" },
		["@lsp.type.class"]         = { link = "@type" },
		["@lsp.type.enum"]          = { link = "@type" },
		["@lsp.type.interface"]     = { link = "@type" },
		["@lsp.type.struct"]        = { link = "@type" },
		["@lsp.type.typeParameter"] = { link = "@type" },
		["@lsp.type.parameter"]     = { link = "@variable.parameter" },
		["@lsp.type.variable"]      = { link = "@variable" },
		["@lsp.type.property"]      = { link = "@property" },
		["@lsp.type.enumMember"]    = { link = "@variable.member" },
		["@lsp.type.function"]      = { link = "@function" },
		["@lsp.type.method"]        = { link = "@function.method" },
		["@lsp.type.macro"]         = { link = "@function.macro" },
		["@lsp.type.decorator"]     = { link = "@function.macro" },
		["@lsp.type.comment"]       = { link = "@comment" },
		["@lsp.type.operator"]      = { link = "@operator" },
		["@lsp.type.builtin"]       = { link = "@variable.builtin" },
		["@lsp.type.builtinType"]   = { link = "@type.builtin" },
	}
end

return M
