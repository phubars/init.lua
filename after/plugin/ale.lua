vim.g.ale_fix_on_save = 1
vim.g.ale_fixers = {
    typescript = { "prettier", "eslint" },
    javascript = { "prettier", "eslint" }
}
