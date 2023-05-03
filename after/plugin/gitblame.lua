-- disable by default
vim.cmd("GitBlameDisable")

vim.keymap.set('n', '<leader>b', "<cmd>GitBlameToggle<cr>", {})
