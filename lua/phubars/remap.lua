-- visual line move
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- keep cursor in place when condensing lines
vim.keymap.set("n", "J", "mzJ`z")

-- keep cursor in the middle when scorlling
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- yank into system clipboard
vim.keymap.set({"n", "v"}, "Y", "\"+y")
-- paste from system clipboard
vim.keymap.set({"n", "v"}, "P", "\"+p")

-- paste but keep in buffer
vim.keymap.set("x", "<leader>p", [["_dP]])

-- delete into void
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- directory explorer
vim.keymap.set("n", "<leader>fe", vim.cmd.Ex)

-- folds
function EnableFolds()
    vim.opt.foldmethod = "expr"
    vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
end
vim.keymap.set("n", "<leader>z", EnableFolds)
