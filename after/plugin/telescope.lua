local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<C-f>', builtin.grep_string, {})

vim.keymap.set('n', 'gr', function()
    builtin.lsp_references()
end)

vim.keymap.set('n', 'gd', function()
    builtin.lsp_definitions()
end)

vim.keymap.set('n', 'go', function()
    builtin.lsp_type_definitions()
end)

vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fo', builtin.oldfiles, {})
vim.keymap.set('n', '<leader>fc', builtin.commands, {})
