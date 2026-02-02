local M = {}

M.get = function(config, palette)
    local p = palette
    return {
        ["@annotation"]                   = { fg = p.green100 },
        ["@attribute"]                    = { fg = p.blue200 },

        ["@boolean"]                      = { fg = p.blue100 },
        ["@number"]                       = { fg = p.blue100 },
        ["@number.float"]                 = { fg = p.blue100 },
        ["@character"]                    = { fg = p.blue100 },
        ["@character.special"]            = { fg = p.blue100 },
        ["@comment"]                      = { fg = p.base00, italic = config.italics },

        ["@constant"]                     = { fg = p.red100 },
        ["@constant.builtin"]             = { fg = p.yellow100 },
        ["@constant.macro"]               = { fg = p.green100 },
        ["@constructor"]                  = { fg = p.purple100 },

        ["@diff.delta"]                   = { fg = p.yellow200 },
        ["@diff.minus"]                   = { fg = p.red300 },
        ["@diff.plus"]                    = { fg = p.cyan100 },

        ["@function"]                     = { fg = p.purple100 },
        ["@function.builtin"]             = { fg = p.yellow100 },
        ["@function.call"]                = { fg = p.purple100 },
        ["@function.macro"]               = { fg = p.green100, bold = config.bold },
        ["@function.method"]              = { fg = p.purple100 },
        ["@function.method.call"]         = { fg = p.purple100 },

        ["@keyword"]                      = { fg = p.red200 },
        ["@keyword.conditional"]          = { fg = p.red200 },
        ["@keyword.coroutine"]            = { fg = p.red200 },
        ["@keyword.debug"]                = { fg = p.red200 },
        ["@keyword.directive"]            = { fg = p.red200 },
        ["@keyword.directive.define"]     = { fg = p.red200 },
        ["@keyword.exception"]            = { fg = p.red200 },
        ["@keyword.function"]             = { fg = p.red200 },
        ["@keyword.import"]               = { fg = p.red200 },
        ["@keyword.operator"]             = { fg = p.red200 },
        ["@keyword.repeat"]               = { fg = p.red200 },
        ["@keyword.return"]               = { fg = p.red200 },
        ["@keyword.storage"]              = { fg = p.red200 },

        ["@label"]                        = { fg = p.red200 },

        ["@markup"]                       = { link = "@none" },
        ["@markup.environment"]           = { link = "@macro" },
        ["@markup.environment.name"]      = { link = "@type" },
        ["@markup.heading.1"]             = { fg = p.cyan100 },
        ["@markup.heading.2"]             = { fg = p.cyan200 },
        ["@markup.heading.3"]             = { fg = p.cyan300 },
        ["@markup.heading.4"]             = { fg = p.cyan400 },
        ["@markup.heading.5"]             = { fg = p.cyan500 },
        ["@markup.italic"]                = { italic = true },
        ["@markup.link"]                  = { underline = true },
        ["@markup.link.label"]            = { link = "@character.special" },
        ["@markup.link.label.symbol"]     = { link = "@variable" },
        ["@markup.link.url"]              = { link = "@markup.link" },
        ["@markup.list"]                  = { fg = p.blue300 },
        ["@markup.list.checked"]          = { fg = p.green100 },
        ["@markup.list.markdown"]         = { fg = p.yellow200, bold = true },
        ["@markup.list.unchecked"]        = { fg = p.yellow300 },
        ["@markup.math"]                  = { link = "@character.special" },
        ["@markup.raw"]                   = { link = "@string" },
        ["@markup.raw.markdown"]          = { fg = p.blue100 },
        ["@markup.raw.markdown_inline"]   = { fg = p.yellow200, bg = p.green500 },
        ["@markup.strikethrough"]         = { strikethrough = true },
        ["@markup.strong"]                = { bold = true },
        ["@markup.underline"]             = { underline = true },

        ["@module.builtin"]               = { link = "@variable.builtin" },
        ["@namespace.builtin"]            = { link = "@variable.builtin" },

        ["@none"]                         = {},

        ["@member"]                       = { fg = p.red100 },
        ["@property"]                     = { fg = p.red100 },

        ["@operator"]                     = { fg = p.blue200, bold = config.bold },
        ["@punctuation.delimiter"]        = { fg = p.blue200, bold = config.bold },
        ["@punctuation.bracket"]          = { link = "Normal" },
        ["@punctuation.special"]          = { link = "Normal" },

        ["@string"]                       = { fg = p.blue100 },
        ["@string.documentation"]         = { fg = p.blue100 },
        ["@string.escape"]                = { fg = p.blue300 },
        ["@string.regexp"]                = { fg = p.cyan300 },
        ["@tag"]                          = { link = "@label" },
        ["@tag.attribute"]                = { link = "@property" },
        ["@tag.delimiter"]                = { link = "@punctuation.delimiter" },

        ["@type"]                         = { fg = p.cyan100 },
        ["@type.builtin"]                 = { fg = p.cyan100, bold = config.bold },
        ["@type.definition"]              = { fg = p.cyan100 },
        ["@type.qualifier"]               = { link = "@keyword" },

        ["@variable"]                     = { fg = p.base0 },
        ["@variable.builtin"]             = { fg = p.yellow100 },
        ["@variable.member"]              = { fg = p.red100 },
        ["@variable.parameter"]           = { fg = p.base0 },
        ["@variable.parameter.builtin"]   = { fg = p.base0 },
    }
end

return M
