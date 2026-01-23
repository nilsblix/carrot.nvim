local c = require("carrot.colors").palette

local M = {}

function M.setup()
	local config = require("carrot").config
	local use_italics = config.italics

	vim.cmd("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

    -- All of the nvim-treesitter highlight groups are found here:
    -- https://github.com/nvim-treesitter/nvim-treesitter/blob/master/CONTRIBUTING.md
    local canon = {
        ["@variable"] = { fg = c.fg },
        ["@variable.builtin"] = { fg = c.builtin },
        ["@variable.parameter"] = { fg = c.fg },
        ["@variable.parameter.builtin"] = { fg = c.fg },
        ["@variable.member"] = { fg = c.property },

        ["@constant"] = { fg = c.fg },
        ["@constant.builtin"] = { fg = c.builtin, bold = true },
        ["@constant.macro"] = { fg = c.macro },

        ["@module"] = { fg = c.type },
        ["@module.builtin"] = { fg = c.builtin, bold = true },
        ["@label"] = { fg = c.extra_keyword },

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

        ["@boolean"] = { fg = c.builtin, bold = true },
        ["@number"] = { fg = c.literal },
        ["@number.float"] = { fg = c.literal },

        ["@type"] = { fg = c.type },
        ["@type.builtin"] = { fg = c.builtin, bold = true },
        ["@type.definition"] = { fg = c.type },

        ["@attribute"] = { fg = c.punct },
        ["@attribute.builtin"] = { fg = c.punct },
        ["@property"] = { fg = c.property },

        ["@function"] = { fg = c.func },
        ["@function.builtin"] = { fg = c.builtin },
        ["@function.call"] = { fg = c.func },
        ["@function.macro"] = { fg = c.macro, bold = true },

        ["@function.method"] = { fg = c.func },
        ["@function.method.call"] = { fg = c.func },

        ["@constructor"] = { fg = c.func },
        ["@operator"] = { fg = c.punct, bold = true },

        ["@punctuation.delimiter"] = { fg = c.punct, bold = true },
        ["@punctuation.bracket"] = { fg = c.fg },
        ["@punctuation.special"] = { fg = c.fg },

        ["@keyword"] = { fg = c.keyword },
        ["@keyword.coroutine"] = { fg = c.keyword },
        ["@keyword.function"] = { fg = c.keyword },
        ["@keyword.operator"] = { fg = c.keyword },
        ["@keyword.import"] = { fg = c.builtin },
        ["@keyword.type"] = { fg = c.keyword },
        ["@keyword.modifier"] = { fg = c.modifier, bold = true },
        ["@keyword.repeat"] = { fg = c.extra_keyword, bold = true },
        ["@keyword.return"] = { fg = c.extra_keyword, bold = true },
        ["@keyword.debug"] = { fg = c.keyword },
        ["@keyword.exception"] = { fg = c.keyword },

        ["@keyword.conditional"] = { fg = c.extra_keyword, bold = true },
        ["@keyword.conditional.ternary"] = { fg = c.extra_keyword, bold = true },

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
        ["@markup.math"] = { fg = c.orange },

        ["@markup.link"] = { fg = c.fg_dark },
        ["@markup.link.label"] = { fg = c.fg_light },
        ["@markup.link.url"] = { fg = c.fg_dark },

        ["@markup.raw"] = { fg = c.yellow },
        ["@markup.raw.block"] = { fg = c.variable },

        ["@markup.list"] = { fg = c.fg_dark },
        ["@markup.list.checked"] = { fg = c.teal },
        ["@markup.list.unchecked"] = { fg = c.teal },

        ["@diff.plus"] = { fg = c.git_add },
        ["@diff.minus"] = { fg = c.git_delete },
        ["@diff.delta"] = { fg = c.git_change },

        ["@tag"] = { fg = c.sec_green },
        ["@tag.builtin"] = { fg = c.type, bold = true },
        ["@tag.attribute"] = { fg = c.fg },
        ["@tag.delimiter"] = { fg = c.fg_dark },

        ["@none"] = { fg = c.none, bg = c.none },
        ["@conceal"] = { fg = c.fg_light },
        ["@spell"] = { fg = c.none, bg = c.none },
        ["@nospell"] = { fg = c.none, bg = c.none },

		["@lsp.type.keyword"] = {},
		["@lsp.type.modifier"] = {},
		-- Let TS control builtin vs user-defined types for these filetypes.
		["@lsp.type.type.zig"] = {},
		["@lsp.type.type.rust"] = {},
		["@lsp.type.type.ocaml"] = {},

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

		DiagnosticError = { fg = c.error },
		DiagnosticWarn = { fg = c.warning },
		DiagnosticInfo = { fg = c.info },
		DiagnosticHint = { fg = c.hint },
		DiagnosticUnderlineError = { undercurl = true, sp = c.error },
		DiagnosticUnderlineWarn = { undercurl = true, sp = c.warning },
		DiagnosticUnderlineInfo = { undercurl = true, sp = c.info },
		DiagnosticUnderlineHint = { undercurl = true, sp = c.hint },

		DiffAdd = { bg = c.diff_add_bg },
		DiffChange = { bg = c.diff_add_text_bg },
		DiffDelete = { bg = c.diff_delete_bg },
		DiffText = { bg = c.diff_add_text_bg },

		GitSignsAdd = { fg = c.git_add },
		GitSignsChange = { fg = c.git_change },
		GitSignsDelete = { fg = c.git_delete },

		GitSignsCurrentLineBlame = { fg = c.git_ignored, italic = use_italics },

		diffAdded = { fg = c.git_add },
		diffRemoved = { fg = c.git_delete },
		diffChanged = { fg = c.git_change },
		diffOldFile = { fg = c.git_delete },
		diffNewFile = { fg = c.git_add },
		diffFile = { fg = c.blue },
		diffLine = { fg = c.property },
		diffIndexLine = { fg = c.fg_dark },

		Underlined = { fg = c.link, underline = true },

		ErrorMsg = { fg = c.error },
		WarningMsg = { fg = c.warning },
		MoreMsg = { fg = c.info },
		Question = { fg = c.info },
		Title = { fg = c.blue, bold = true },
		Directory = { fg = c.blue },
		MatchParen = { bg = c.selection },
		Folded = { fg = c.comment, bg = c.bg_sidebar },
		FoldColumn = { fg = c.comment },
		SignColumn = { bg = c.bg },
		ColorColumn = { bg = c.bg_line },

		SpellBad = { undercurl = true, sp = c.error },
		SpellCap = { undercurl = true, sp = c.warning },
		SpellLocal = { undercurl = true, sp = c.info },
		SpellRare = { undercurl = true, sp = c.hint },

		qfFileName = { fg = c.blue },
		qfLineNr = { fg = c.fg_dark },

		IndentBlanklineChar = { fg = c.border },
		IndentBlanklineContextChar = { fg = c.border_focus },

		Whitespace = { fg = c.fg_light },
		NonText = { fg = c.fg_light },
		SpecialKey = { fg = c.fg_light },

		WildMenu = { fg = c.fg, bg = c.selection },

		helpCommand = { fg = c.green },
		helpExample = { fg = c.green },
		helpHeadline = { fg = c.blue, bold = true },
		helpSectionDelim = { fg = c.fg_dark },
    }

    local links = {
		Comment = "@comment",
		Constant = "@constant",
		String = "@string",
		Character = "@character",
		Number = "@number",
		Boolean = "@boolean",
		Float = "@number.float",

		Identifier = "@variable",
		Function = "@function",

		Statement = "@variable",
		Conditional = "@keyword.conditional",
		Repeat = "@keyword.repeat",
		Label = "@label",
		Operator = "@operator",
		Keyword = "@keyword",
		Exception = "@keyword.exception",

		PreProc = "@funcion.macro",
		Include = "@keyword.import",
		Define = "@keyword.import",
		Macro = "@function.macro",
		PreCondit = "@comment",

		Type = "@type",
		StorageClass = "@type",
		Structure = "@type",
		Typedef = "@type",

		Special = "@string.special",
		SpecialChar = "@string.escape",
		Tag = "@tag",
		Delimiter = "@variable",
		SpecialComment = "@comment",
		Debug = "@comment.error",

		["@lsp.type.string"] = "@string",
		["@lsp.type.number"] = "@number",
		["@lsp.type.boolean"] = "@boolean",
		["@lsp.type.namespace"] = "@module",
		["@lsp.type.type"] = "@type",
		["@lsp.type.class"] = "@type",
		["@lsp.type.enum"] = "@type",
		["@lsp.type.interface"] = "@type",
		["@lsp.type.struct"] = "@type",
		["@lsp.type.typeParameter"] = "@type",
		["@lsp.type.parameter"] = "@variable.parameter",
		["@lsp.type.variable"] = "@variable",
		["@lsp.type.property"] = "@property",
		["@lsp.type.enumMember"] = "@constant",
		["@lsp.type.function"] = "@function",
		["@lsp.type.method"] = "@function.method",
		["@lsp.type.macro"] = "@function.macro",
		["@lsp.type.decorator"] = "@function.macro",
		["@lsp.type.comment"] = "@comment",
		["@lsp.type.operator"] = "@operator",
		["@lsp.type.builtin"] = "@type.builtin",
		["@lsp.type.builtinType"] = "@type.builtin",
    }

	for group, opts in pairs(canon) do
		vim.api.nvim_set_hl(0, group, opts)
	end

    for group, to_link in pairs(links) do
        vim.api.nvim_set_hl(0, group, { link = to_link })
    end
end

return M
