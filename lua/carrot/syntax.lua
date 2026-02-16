local M = {}

M.get = function(_, palette)
    local p = palette
    return {
		Normal           = { fg = p.base0, bg = p.base04 },
		NormalFloat      = { fg = p.base0, bg = p.base03 },

		LineNr           = { fg = p.base01, bg = p.base03 },

		Visual           = { bg = p.base01 },
		VisualNOS        = { bg = p.base00 },
		Search           = { bg = p.yellow400 },
		IncSearch        = { bg = p.yellow400 },

		Pmenu            = { fg = p.base00, bg = p.base03 },
		PmenuSel         = { fg = p.base00, bg = p.base02 },
		StatusLine       = { fg = p.base00, bg = p.base02 },
		StatusLineNC     = { fg = p.base01, bg = p.base03 },
		TabLine          = { fg = p.base01, bg = p.base03 },
		TabLineFill      = { link = "TabLine" },
		TabLineSel       = { fg = p.base0, bg = p.base02, bold = true },
		VertSplit        = { fg = p.base02 },
		WinSeparator     = { link = "VertSplit" },
		FloatBorder      = { fg = p.base01 },

		WinBar           = { link = "StatusLine" },
		WinBarNC         = { link = "StatusLineNC" },

		DiffAdd          = { fg = p.cyan100, bg = p.green500 },
		DiffChange       = { fg = p.yellow200, bg = p.base03 },
		DiffDelete       = { fg = p.red200, bg = p.red400 },
		DiffText         = { fg = p.base0, bg = p.yellow400 },

		Underlined       = { underline = true },

		ErrorMsg         = { fg = p.red200, bold = true },
		WarningMsg       = { fg = p.yellow200 },
		MoreMsg          = { fg = p.cyan200 },
		Question         = { fg = p.cyan100 },
		Title            = { fg = p.cyan100, bold = true },
		Directory        = { fg = p.blue200 },
		MatchParen       = { bg = p.red300 },
		Folded           = { fg = p.base01, bg = p.base03 },
		FoldColumn       = { fg = p.base01 },
		SignColumn       = { bg = p.base04 },
		ColorColumn      = { bg = p.base03 },

		SpellBad         = { undercurl = true, sp = p.red200 },
		SpellCap         = { undercurl = true, sp = p.yellow200 },
		SpellLocal       = { undercurl = true, sp = p.cyan200 },
		SpellRare        = { undercurl = true, sp = p.cyan400 },

		qfFileName       = { fg = p.blue200 },
		qfLineNr         = { fg = p.base01 },

		Whitespace       = { fg = p.base01 },
		NonText          = { fg = p.base01 },
		SpecialKey       = { fg = p.base01 },

		WildMenu         = { link = "PmenuSel" },

		helpCommand      = { fg = p.green100 },
		helpExample      = { fg = p.green100 },
		helpHeadline     = { fg = p.cyan100, bold = true },
		helpSectionDelim = { fg = p.base01 },

		Comment          = { link = "@comment" },
		Constant         = { link = "@constant" },
		String           = { link = "@string" },
		Character        = { link = "@character" },
		Number           = { link = "@number" },
		Boolean          = { link = "@boolean" },
		Float            = { link = "@number.float" },

		Identifier       = { link = "@variable" },
		Function         = { link = "@function" },

		Statement        = { link = "@variable" },
		Conditional      = { link = "@keyword.conditional" },
		Repeat           = { link = "@keyword.repeat" },
		Label            = { link = "@label" },
		Operator         = { link = "@operator" },
		Keyword          = { link = "@keyword" },
		Exception        = { link = "@keyword.exception" },

		PreProc          = { link = "@function.macro" },
		Include          = { link = "@keyword.import" },
		Define           = { link = "@keyword.import" },
		Macro            = { link = "@function.macro" },
		PreCondit        = { link = "@comment" },

		Type             = { link = "@type" },
		StorageClass     = { link = "@type" },
		Structure        = { link = "@type" },
		Typedef          = { link = "@type" },

		Special          = { link = "@string.special" },
		SpecialChar      = { link = "@string.escape" },
		Tag              = { link = "@tag" },
		Delimiter        = { link = "@variable" },
		SpecialComment   = { link = "@comment" },
		Debug            = { link = "@comment.error" },
    }
end

return M
