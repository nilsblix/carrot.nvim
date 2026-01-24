local M = {}

function M.setup(colors, config)
	local c = colors.theme
	local use_italics = config.italics

	return {
		["@variable"] = { fg = c.fg },
		["@variable.builtin"] = { fg = c.builtin },
		["@variable.parameter"] = { fg = c.fg },
		["@variable.parameter.builtin"] = { fg = c.fg },
		["@variable.member"] = { fg = c.member },

		["@constant"] = { fg = c.member },
		["@constant.builtin"] = { fg = c.builtin },
		["@constant.macro"] = { fg = c.macro },

		["@module"] = { fg = c.fg },
		["@module.builtin"] = { fg = c.fg },
		["@label"] = { fg = c.keyword },

		["@string"] = { fg = c.string },
		["@string.documentation"] = { fg = c.string },
		["@string.regexp"] = { fg = c.string },
		["@string.escape"] = { fg = c.string },
		["@string.special"] = { fg = c.string },
		["@string.special.symbol"] = { fg = c.string },
		["@string.special.url"] = { fg = c.string },
		["@string.special.path"] = { fg = c.string },

		["@character"] = { fg = c.string },
		["@character.special"] = { fg = c.string },

		["@boolean"] = { fg = c.literal },
		["@number"] = { fg = c.literal },
		["@number.float"] = { fg = c.literal },

		["@type"] = { fg = c.type },
		["@type.builtin"] = { fg = c.type, bold = true },
		["@type.definition"] = { fg = c.type },

		["@attribute"] = { fg = c.attribute },
		["@attribute.builtin"] = { fg = c.attribute },
		["@property"] = { fg = c.member },

		["@function"] = { fg = c.func },
		["@function.builtin"] = { fg = c.builtin },
		["@function.call"] = { fg = c.func },
		["@function.macro"] = { fg = c.macro, bold = true },

		["@function.method"] = { fg = c.func },
		["@function.method.call"] = { fg = c.func },

		["@constructor"] = { fg = c.func },
		["@operator"] = { fg = c.operator, bold = true },

		["@punctuation.delimiter"] = { fg = c.operator, bold = true },
		["@punctuation.bracket"] = { fg = c.fg },
		["@punctuation.special"] = { fg = c.fg },

		["@keyword"] = { fg = c.keyword },
		["@keyword.coroutine"] = { fg = c.keyword },
		["@keyword.function"] = { fg = c.keyword },
		["@keyword.operator"] = { fg = c.keyword },
		["@keyword.import"] = { fg = c.keyword },
		["@keyword.type"] = { fg = c.keyword },
		["@keyword.modifier"] = { fg = c.keyword },
		["@keyword.repeat"] = { fg = c.keyword },
		["@keyword.return"] = { fg = c.keyword },
		["@keyword.debug"] = { fg = c.keyword },
		["@keyword.exception"] = { fg = c.keyword },

		["@keyword.conditional"] = { fg = c.keyword },
		["@keyword.conditional.ternary"] = { fg = c.keyword },

		["@keyword.directive"] = { fg = c.builtin },
		["@keyword.directive.define"] = { fg = c.builtin },

		["@comment"] = { fg = c.comment, italic = use_italics },
		["@comment.documentation"] = { fg = c.comment, italic = use_italics },

		["@comment.error"] = { fg = c.comment },
		["@comment.warning"] = { fg = c.comment },
		["@comment.todo"] = { fg = c.comment },
		["@comment.note"] = { fg = c.comment },

		["@markup.strong"] = { bold = true },
		["@markup.italic"] = { italic = true },
		["@markup.strikethrough"] = { fg = c.line_number, strikethrough = true },
		["@markup.underline"] = { underline = true },

		["@markup.heading"] = { fg = c.sec_green },
		["@markup.heading.1"] = { fg = c.sec_cyan },
		["@markup.heading.2"] = { fg = c.sec_teal },
		["@markup.heading.3"] = { fg = c.sec_green },
		["@markup.heading.4"] = { fg = c.sec_blue },
		["@markup.heading.5"] = { fg = c.sec_purple },
		["@markup.heading.6"] = { fg = c.sec_yellow },

		["@markup.quote"] = { fg = c.comment, italic = use_italics },
		["@markup.math"] = { fg = c.sec_orange },

		["@markup.link"] = { fg = c.fg_dark },
		["@markup.link.label"] = { fg = c.fg },
		["@markup.link.url"] = { fg = c.fg_dark },

		["@markup.raw"] = { fg = c.sec_yellow },
		["@markup.raw.block"] = { fg = c.fg },

		["@markup.list"] = { fg = c.fg_dark },
		["@markup.list.checked"] = { fg = c.sec_teal },
		["@markup.list.unchecked"] = { fg = c.sec_teal },

		["@diff.plus"] = { fg = c.git_add },
		["@diff.minus"] = { fg = c.git_delete },
		["@diff.delta"] = { fg = c.git_change },

		["@tag"] = { fg = c.sec_green },
		["@tag.builtin"] = { fg = c.type, bold = true },
		["@tag.attribute"] = { fg = c.fg },
		["@tag.delimiter"] = { fg = c.fg_dark },

		["@none"] = { fg = c.none, bg = c.none },
		["@conceal"] = { fg = c.fg_super_dark },
		["@spell"] = { fg = c.none, bg = c.none },
		["@nospell"] = { fg = c.none, bg = c.none },
	}
end

return M
