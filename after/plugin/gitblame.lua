-- disable by default
vim.cmd("GitBlameDisable")

vim.keymap.set('n', '<leader>b', "<cmd>GitBlameToggle<cr>", {})
vim.keymap.set('n', '<leader>bf', "<cmd>GitBlameOpenFileURL<cr>", {})
vim.keymap.set('n', '<leader>bc', "<cmd>GitBlameOpenCommitURL<cr>", {})
