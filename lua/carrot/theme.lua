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
        ["@variable.builtin"] = { fg = c.variable },
        ["@variable.parameter"] = { fg = c.fg },
        ["@variable.parameter.builtin"] = { fg = c.red, bold = true },
        ["@variable.member"] = { fg = c.red },

        ["@constant"] = { fg = c.orange },
        ["@constant.builtin"] = { fg = c.orange },
        ["@constant.macro"] = { fg = c.orange },

        ["@module"] = { fg = c.dilute },
        ["@module.builtin"] = { fg = c.dilute },
        ["@label"] = { fg = c.violet },

        ["@string"] = { fg = c.aqua },
        ["@string.documentation"] = { fg = c.aqua },
        ["@string.regexp"] = { fg = c.aqua },
        ["@string.escape"] = { fg = c.aqua },
        ["@string.special"] = { fg = c.aqua },
        ["@string.special.symbol"] = { fg = c.aqua },
        ["@string.special.url"] = { fg = c.aqua },
        ["@string.special.path"] = { fg = c.aqua },

        ["@character"] = { fg = c.red },
        ["@character.special"] = { fg = c.red },

        ["@boolean"] = { fg = c.pink },
        ["@number"] = { fg = c.pink },
        ["@number.float"] = { fg = c.pink },

        ["@type"] = { fg = c.orange, bold = false },
        ["@type.builtin"] = { fg = c.orange, bold = true },
        ["@type.definition"] = { fg = c.orange, bold = false },

        ["@attribute"] = { fg = c.cyan },
        ["@attribute.builtin"] = { fg = c.cyan },
        ["@property"] = { fg = c.red },

        ["@function"] = { fg = c.yellow, bold = true },
        ["@function.builtin"] = { fg = c.cyan, bold = true },
        ["@function.call"] = { fg = c.yellow, bold = false },
        ["@function.macro"] = { fg = c.yellow, bold = true },

        ["@function.method"] = { fg = c.yellow, bold = true },
        ["@function.method.call"] = { fg = c.yellow, bold = false },

        ["@constructor"] = { fg = c.yellow, bold = true },
        ["@operator"] = { fg = c.blue },

        ["@keyword"] = { fg = c.violet },
        ["@keyword.coroutine"] = { fg = c.violet },
        ["@keyword.function"] = { fg = c.violet },
        ["@keyword.operator"] = { fg = c.violet },
        ["@keyword.import"] = { fg = c.cyan },
        ["@keyword.type"] = { fg = c.violet },
        ["@keyword.modifier"] = { fg = c.violet },
        ["@keyword.repeat"] = { fg = c.violet },
        ["@keyword.return"] = { fg = c.violet },
        ["@keyword.debug"] = { fg = c.violet },
        ["@keyword.exception"] = { fg = c.violet },

        ["@keyword.conditional"] = { fg = c.red },
        ["@keyword.conditional.ternary"] = { fg = c.violet },

        ["@keyword.directive"] = { fg = c.violet },
        ["@keyword.directive.define"] = { fg = c.violet },

        ["@punctuation.delimiter"] = { fg = c.fg },
        ["@punctuation.bracket"] = { fg = c.fg },
        ["@punctuation.special"] = { fg = c.fg },

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

		-- LSP Semantic Tokens
        ["@lsp.type.string"] = "NONE",
		["@lsp.type.namespace"] = "@module",
		["@lsp.type.type"] = "@type",
		["@lsp.type.class"] = "@type",
		["@lsp.type.enum"] = "@type",
		["@lsp.type.interface"] = "@type",
		["@lsp.type.struct"] = "@type",
		["@lsp.type.parameter"] = "@variable.parameter",
		["@lsp.type.variable"] = "NONE",
		["@lsp.type.property"] = "@property",
		["@lsp.type.enumMember"] = "@type",
		["@lsp.type.function"] = "@function",
		["@lsp.type.method"] = "@function",
		["@lsp.type.macro"] = "@function.macro",
		["@lsp.type.decorator"] = "@function.macro",
		["@lsp.type.comment"] = "@comment",
		["@lsp.type.builtinType"] = "@type",
    }

	for group, opts in pairs(canon) do
		vim.api.nvim_set_hl(0, group, opts)
	end

    for group, to_link in pairs(links) do
        vim.api.nvim_set_hl(0, group, { link = to_link })
    end
end

return M
