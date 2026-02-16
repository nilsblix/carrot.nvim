# carrot.nvim

Neovim colorscheme because I was torn between different ones.

## Installation

### lazy.nvim
```lua
{
    "nilsblix/carrot.nvim",
    name = "carrot",
    priority = 1000,
}
```

### Configuration
```lua
require("carrot").setup({
	-- Enable/disable all italic styling.
	italics = true,
    -- Enable/disable all bold styling.
    bold = true,
    -- Enable/disable ui styling, ex show tabline.
    ui = false,
})
```

## Usage
```lua
vim.cmd.colorscheme("carrot")
```
