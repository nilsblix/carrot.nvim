local M = {}

function M.setup(colors, config)
	local c = colors.theme

	return {
		DiagnosticError = { fg = c.error },
		DiagnosticWarn = { fg = c.warning },
		DiagnosticInfo = { fg = c.info },
		DiagnosticHint = { fg = c.hint },
		DiagnosticUnderlineError = { undercurl = true, sp = c.error },
		DiagnosticUnderlineWarn = { undercurl = true, sp = c.warning },
		DiagnosticUnderlineInfo = { undercurl = true, sp = c.info },
		DiagnosticUnderlineHint = { undercurl = true, sp = c.hint },

		["@lsp.type.string"] = { link = "@string" },
		["@lsp.type.number"] = { link = "@number" },
		["@lsp.type.boolean"] = { link = "@boolean" },
		["@lsp.type.namespace"] = { link = "@module" },
		["@lsp.type.type"] = { link = "@type" },
		["@lsp.type.class"] = { link = "@type" },
		["@lsp.type.enum"] = { link = "@type" },
		["@lsp.type.interface"] = { link = "@type" },
		["@lsp.type.struct"] = { link = "@type" },
		["@lsp.type.typeParameter"] = { link = "@type" },
		["@lsp.type.parameter"] = { link = "@variable.parameter" },
		["@lsp.type.variable"] = { link = "@variable" },
		["@lsp.type.property"] = { link = "@property" },
		["@lsp.type.enumMember"] = { link = "@variable.member" },
		["@lsp.type.function"] = { link = "@function" },
		["@lsp.type.method"] = { link = "@function.method" },
		["@lsp.type.macro"] = { link = "@function.macro" },
		["@lsp.type.decorator"] = { link = "@function.macro" },
		["@lsp.type.comment"] = { link = "@comment" },
		["@lsp.type.operator"] = { link = "@operator" },
		["@lsp.type.builtin"] = { link = "@variable.builtin" },
		["@lsp.type.builtinType"] = { link = "@type.builtin" },
	}
end

return M
