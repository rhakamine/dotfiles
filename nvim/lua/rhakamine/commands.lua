-- Sort by project
vim.keymap.set({"n", "v"}, "<leader>sP", function()
    return ':sort /.*=/<cr>'
end, { expr = true })

-- Sort by priority
vim.keymap.set({"n", "v"}, "<leader>sp", function()
    return ':sort /.*+/<cr>'
end, { expr = true })

-- Sort by date
vim.keymap.set({"n", "v"}, "<leader>sd", function()
    return ':sort /.*__/<cr>'
end, { expr = true })


vim.keymap.set("n", "<F11>", function()
    if vim.g.syntax_on then
        vim.cmd("syntax off")
        vim.cmd("TSDisable highlight")
    else
        vim.cmd("syntax on")
        vim.cmd("TSEnable highlight")
    end

end)

vim.keymap.set("n", "<F2>", function()
    if (vim.bo.filetype == "c" or vim.bo.filetype == "cpp") then
        return ':!gcc % -o out && ./out<cr>'
    end
end, {expr = true})


vim.keymap.set("n", "<C-b>", function()
    return ":NvimTreeToggle<CR>"
end, {expr = true})
