require('catppuccin').setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        light = "latte",
        dark = "mocha",
    },
    transparent_background = true, -- disables setting the background color.
})

require('gruvbox').setup({
    bold = false,
    transparent_mode = true
})

require('everforest').setup({
    background = "medium",
    transparent_background_level = 1
})

function ColorMyPencils(color)
    color = color or "everforest"
    vim.cmd.colorscheme(color)
end

ColorMyPencils("everforest")
