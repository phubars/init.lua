return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'junegunn/fzf'
  use 'junegunn/fzf.vim'
  use 'sheerun/vim-polyglot'
  use 'neovim/nvim-lspconfig'
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-tree/nvim-tree.lua'
end)
