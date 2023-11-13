vim.g.mapleader = ","
vim.g.maplocalleader = ","

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "<leader>hex", ":%s/<C-r><C-w>/\\=printf('0x%X', submatch(0))<CR>")
vim.keymap.set("n", "<leader>1", function()
    if (vim.bo.filetype == "c" or vim.bo.filetype == "cpp") then
        return ":ClangdSwitchSourceHeader<CR>"
    end
end, {expr = true})
