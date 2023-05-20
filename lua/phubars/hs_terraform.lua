-- init
vim.keymap.set("n", "<leader>ti", ":terminal make init<CR>")
vim.keymap.set("n", "<leader>tr", ":terminal rm -rf .terraform<CR>")

-- planning
vim.keymap.set("n", "<leader>tpi", ":terminal make plan-integration<CR>")
vim.keymap.set("n", "<leader>tps", ":terminal make plan-staging_usw2<CR>")
vim.keymap.set("n", "<leader>tpp", ":terminal make plan-prod<CR>")

-- state
