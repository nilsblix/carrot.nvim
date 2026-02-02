local M = {}

M.get = function(_, palette)
    local p = palette
    return {
		Normal           = { fg = p.base0, bg = p.base04 },
		NormalFloat      = { fg = p.base0, bg = p.base03 },
		NormalNC         = { fg = p.base0, bg = p.base05 },

		LineNr           = { fg = p.base01 },

		Visual           = { bg = p.base01 },
		VisualNOS        = { bg = p.base00 },
		Search           = { bg = p.yellow400 },
		IncSearch        = { bg = p.yellow400 },

		Pmenu            = { fg = p.base00, bg = p.base03 },
		PmenuSel         = { fg = p.base00, bg = p.base02 },
		StatusLine       = { fg = p.base00, bg = p.base02 },
		StatusLineNC     = { fg = p.base01, bg = p.base03 },
		TabLine          = { link = "StatusLineNC" },
		TabLineFill      = { link = "StatusLine" },
		TabLineSel       = { fg = p.base00, bg = p.base01 },
		VertSplit        = { fg = p.base00 },
		WinSeparator     = { fg = p.base00 },
		FloatBorder      = { fg = p.base00 },

        -- TODO: Populate these...
		-- WinBar           = { bg = c.bg },
		-- WinBarNC         = { bg = c.bg },
		--
		-- DiffAdd          = { bg = c.diff_add_bg },
		-- DiffChange       = { bg = c.diff_add_text_bg },
		-- DiffDelete       = { bg = c.diff_delete_bg },
		-- DiffText         = { bg = c.diff_add_text_bg },
		--
		-- Underlined       = { fg = c.link, underline = true },
		--
		-- ErrorMsg         = { fg = c.error },
		-- WarningMsg       = { fg = c.warning },
		-- MoreMsg          = { fg = c.info },
		-- Question         = { fg = c.info },
		-- Title            = { fg = c.sec_blue, bold = true },
		-- Directory        = { fg = c.sec_blue },
		-- MatchParen       = { bg = c.selection },
		-- Folded           = { fg = c.comment, bg = c.bg_sidebar },
		-- FoldColumn       = { fg = c.comment },
		-- SignColumn       = { bg = c.bg },
		-- ColorColumn      = { bg = c.bg_line },
		--
		-- SpellBad         = { undercurl = true, sp = c.error },
		-- SpellCap         = { undercurl = true, sp = c.warning },
		-- SpellLocal       = { undercurl = true, sp = c.info },
		-- SpellRare        = { undercurl = true, sp = c.hint },
		--
		-- qfFileName       = { fg = c.sec_blue },
		-- qfLineNr         = { fg = c.fg_dark },
		--
		-- Whitespace       = { fg = c.fg_super_dark },
		-- NonText          = { fg = c.fg_super_dark },
		-- SpecialKey       = { fg = c.fg_super_dark },
		--
		-- WildMenu         = { fg = c.fg, bg = c.selection },
		--
		-- helpCommand      = { fg = c.sec_green },
		-- helpExample      = { fg = c.sec_green },
		-- helpHeadline     = { fg = c.sec_blue, bold = true },
		-- helpSectionDelim = { fg = c.fg_dark },

		Comment        = { link = "@comment" },
		Constant       = { link = "@constant" },
		String         = { link = "@string" },
		Character      = { link = "@character" },
		Number         = { link = "@number" },
		Boolean        = { link = "@boolean" },
		Float          = { link = "@number.float" },

		Identifier     = { link = "@variable" },
		Function       = { link = "@function" },

		Statement      = { link = "@variable" },
		Conditional    = { link = "@keyword.conditional" },
		Repeat         = { link = "@keyword.repeat" },
		Label          = { link = "@label" },
		Operator       = { link = "@operator" },
		Keyword        = { link = "@keyword" },
		Exception      = { link = "@keyword.exception" },

		PreProc        = { link = "@function.macro" },
		Include        = { link = "@keyword.import" },
		Define         = { link = "@keyword.import" },
		Macro          = { link = "@function.macro" },
		PreCondit      = { link = "@comment" },

		Type           = { link = "@type" },
		StorageClass   = { link = "@type" },
		Structure      = { link = "@type" },
		Typedef        = { link = "@type" },

		Special        = { link = "@string.special" },
		SpecialChar    = { link = "@string.escape" },
		Tag            = { link = "@tag" },
		Delimiter      = { link = "@variable" },
		SpecialComment = { link = "@comment" },
		Debug          = { link = "@comment.error" },
    }
end

return M
