local M = {}

function M.setup(colors, config)
	local c = colors.theme
	local use_italics = config.italics

	return {
		Normal = { fg = c.fg, bg = c.bg },
		NormalFloat = { fg = c.fg, bg = c.bg_float },
		NormalNC = { fg = c.fg, bg = c.bg },

		CursorLine = { bg = c.bg_line },
		CursorColumn = { bg = c.bg_line },
		CursorLineNr = { fg = c.line_number_active, bold = true },
		LineNr = { fg = c.line_number },

		Visual = { bg = c.selection },
		VisualNOS = { bg = c.selection },
		Search = { bg = c.search },
		IncSearch = { bg = c.search, fg = c.fg },

		Pmenu = { fg = c.fg_dark, bg = c.bg_float },
		PmenuSel = { bg = c.selection_inactive, fg = c.fg },
		PmenuSbar = { bg = c.border },
		PmenuThumb = { bg = c.line_number },
		StatusLine = { fg = c.fg_super_dark, bg = c.bg_extra_light },
		StatusLineNC = { fg = c.fg_super_dark, bg = c.bg_light },
		TabLine = { fg = c.fg_dark, bg = c.bg_sidebar },
		TabLineFill = { bg = c.bg_sidebar },
		TabLineSel = { fg = c.fg, bg = c.bg },
		VertSplit = { fg = c.border },
		WinSeparator = { fg = c.border },
		FloatBorder = { fg = c.border },

		WinBar = { bg = c.bg },
		WinBarNC = { bg = c.bg },

		DiffAdd = { bg = c.diff_add_bg },
		DiffChange = { bg = c.diff_add_text_bg },
		DiffDelete = { bg = c.diff_delete_bg },
		DiffText = { bg = c.diff_add_text_bg },

		Underlined = { fg = c.link, underline = true },

		ErrorMsg = { fg = c.error },
		WarningMsg = { fg = c.warning },
		MoreMsg = { fg = c.info },
		Question = { fg = c.info },
		Title = { fg = c.sec_blue, bold = true },
		Directory = { fg = c.sec_blue },
		MatchParen = { bg = c.selection },
		Folded = { fg = c.comment, bg = c.bg_sidebar },
		FoldColumn = { fg = c.comment },
		SignColumn = { bg = c.bg },
		ColorColumn = { bg = c.bg_line },

		SpellBad = { undercurl = true, sp = c.error },
		SpellCap = { undercurl = true, sp = c.warning },
		SpellLocal = { undercurl = true, sp = c.info },
		SpellRare = { undercurl = true, sp = c.hint },

		qfFileName = { fg = c.sec_blue },
		qfLineNr = { fg = c.fg_dark },

		Whitespace = { fg = c.fg_super_dark },
		NonText = { fg = c.fg_super_dark },
		SpecialKey = { fg = c.fg_super_dark },

		WildMenu = { fg = c.fg, bg = c.selection },

		helpCommand = { fg = c.sec_green },
		helpExample = { fg = c.sec_green },
		helpHeadline = { fg = c.sec_blue, bold = true },
		helpSectionDelim = { fg = c.fg_dark },
	}
end

return M
