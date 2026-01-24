local M = {}

function M.setup()
	return {
		Comment = { link = "@comment" },
		Constant = { link = "@constant" },
		String = { link = "@string" },
		Character = { link = "@character" },
		Number = { link = "@number" },
		Boolean = { link = "@boolean" },
		Float = { link = "@number.float" },

		Identifier = { link = "@variable" },
		Function = { link = "@function" },

		Statement = { link = "@variable" },
		Conditional = { link = "@keyword.conditional" },
		Repeat = { link = "@keyword.repeat" },
		Label = { link = "@label" },
		Operator = { link = "@operator" },
		Keyword = { link = "@keyword" },
		Exception = { link = "@keyword.exception" },

		PreProc = { link = "@function.macro" },
		Include = { link = "@keyword.import" },
		Define = { link = "@keyword.import" },
		Macro = { link = "@function.macro" },
		PreCondit = { link = "@comment" },

		Type = { link = "@type" },
		StorageClass = { link = "@type" },
		Structure = { link = "@type" },
		Typedef = { link = "@type" },

		Special = { link = "@string.special" },
		SpecialChar = { link = "@string.escape" },
		Tag = { link = "@tag" },
		Delimiter = { link = "@variable" },
		SpecialComment = { link = "@comment" },
		Debug = { link = "@comment.error" },
	}
end

return M
