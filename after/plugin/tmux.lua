-- https://github.com/christoomey/vim-tmux-navigator/issues/189
-- prevent netrw from capturing ctrl-l
vim.cmd([[
    function! NetrwMapping()
      nnoremap <silent> <buffer> <c-l> :TmuxNavigateRight<CR>
    endfunction

    augroup netrw_mapping
      autocmd!
      autocmd filetype netrw call NetrwMapping()
    augroup END
]])

