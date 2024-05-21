local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>rg', function() 
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
vim.keymap.set('n', '<leader>fg', builtin.live_grep)
vim.keymap.set('n', '<leader>fb', builtin.current_buffer_fuzzy_find)
vim.keymap.set('n', '<leader>fm', builtin.marks)
end)
