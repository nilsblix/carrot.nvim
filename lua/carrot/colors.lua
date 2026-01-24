local palette = {
	-- Base
	bg = "#212121",
	bg_light = "#282828",
	bg_extra_light = "#353535",
	fg = "#dddddd",
	fg_dark = "#aaaaaa",
	fg_super_dark = "#818181",
	comment = "#8a8a8a",
	none = "NONE",

	-- Syntax
	keyword = "#FF7B72",
	member = "#FFA198",
	operator = "#79C0FF",
	attribute = "#79C0FF",
	func = "#D1A8FF",
	type = "#5be3c8",
	string = "#A5D6FF",
	literal = "#A5D6FF",
	macro = "#C6D73E",
	builtin = "#fcd360",

	-- Accents
	sec_green = "#15AC91",
	sec_cyan = "#75D3BA",
	sec_teal = "#82D2CE",
	sec_orange = "#EFB080",
	sec_yellow = "#F8C762",
	sec_purple = "#AA9BF5",
	sec_blue = "#228DF2",

	-- UI
	selection = "#163761",
	selection_inactive = "#363636",
	line_number = "#535353",
	line_number_active = "#C2C2C2",
	border = "#383838",
	border_focus = "#4F4F4F",
	search = "#163764",

	-- Diagnostics
	error = "#F14C4C",
	warning = "#EA7620",
	info = "#228DF2",
	hint = "#A8CC72",

	-- Git
	git_add = "#15AC91",
	git_change = "#E5B95C",
	git_delete = "#F14C4C",
	git_ignored = "#666666",

	-- Diff
	diff_add_bg = "#2C3C39",
	diff_add_text_bg = "#2C3C39",
	diff_delete_bg = "#412222",

	-- Misc
	link = "#228DF2",
}

local M = { palette = palette }

function M.setup()
	local theme = require("carrot.themes").default(palette)
	return { palette = palette, theme = theme }
end

return M
