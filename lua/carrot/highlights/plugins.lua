local M = {}

function M.setup(colors, config)
	local c = colors.theme
	local use_italics = config.italics

	return {
		GitSignsAdd = { fg = c.git_add },
		GitSignsChange = { fg = c.git_change },
		GitSignsDelete = { fg = c.git_delete },
		GitSignsCurrentLineBlame = { fg = c.git_ignored, italic = use_italics },

		diffAdded = { fg = c.git_add },
		diffRemoved = { fg = c.git_delete },
		diffChanged = { fg = c.git_change },
		diffOldFile = { fg = c.git_delete },
		diffNewFile = { fg = c.git_add },
		diffFile = { fg = c.sec_blue },
		diffLine = { fg = c.member },
		diffIndexLine = { fg = c.fg_dark },

		IndentBlanklineChar = { fg = c.border },
		IndentBlanklineContextChar = { fg = c.border_focus },
	}
end

return M
