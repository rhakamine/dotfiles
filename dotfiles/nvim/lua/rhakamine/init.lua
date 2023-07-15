require("rhakamine.set")
require("rhakamine.remap")
require("rhakamine.packer")

local augroup = vim.api.nvim_create_augroup
local source_files_group = augroup('source_files', {})

local autocmd = vim.api.nvim_create_autocmd

-- Remove whitespace trailling
autocmd({"BufWritePre"}, {
    group = source_files_group,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
