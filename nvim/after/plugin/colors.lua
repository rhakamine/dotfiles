require("catppuccin").setup({
    transparent_background = true,
    dim_inactive = {
        enabled = true, -- dims the background color of inactive window
        shade = "dark",
        percentage = 0.15, -- percentage of the shade to apply to the inactive window
    },
})

function ColorMyPencils(color)
    color = color or "catppuccin"
    vim.cmd.colorscheme(color)
end

ColorMyPencils()
