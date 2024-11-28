require('telescope').setup({
	defaults = {
		layout_strategy = 'horizontal',
		layout_config = {
			horizontal = {
				width=0.99,
				height=0.99,
				preview_cutoff=0,
			}
		},
	},
})

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
