local hslutil = require("carrot.hsl")
local hsl = hslutil.hslToHex

local M = {}

M.palette = {
    base05    = hsl(0, 0, 9),
    base04    = hsl(0, 0, 13),
    base03    = hsl(0, 0, 16),
    base02    = hsl(0, 0, 23),
    base01    = hsl(3, 0, 40),
    base00    = hsl(7, 0, 65),
    base0     = hsl(0, 0, 87),

    red100    = hsl(5, 100, 80),
    red200    = hsl(4, 100, 72),
    red300    = hsl(0, 75, 42),
    red400    = hsl(0, 51, 19),

    blue100   = hsl(207, 100, 82),
    blue200   = hsl(208, 100, 74),
    blue300   = hsl(209, 89, 54),
    blue400   = hsl(214, 63, 23),

    purple100 = hsl(268, 100, 83),

    cyan100   = hsl(168, 71, 62),
    cyan200   = hsl(169, 68, 48),
    cyan300   = hsl(169, 68, 38),
    cyan400   = hsl(169, 88, 28),
    cyan500   = hsl(169, 98, 18),

    yellow100 = hsl(40, 91, 68),
    yellow200 = hsl(37, 72, 53),
    yellow300 = hsl(28, 53, 44),
    yellow400 = hsl(28, 73, 24),

    green100  = hsl(67, 66, 54),
    green200  = hsl(74, 77, 32),
    green500  = hsl(74, 97, 11),
}

return M
