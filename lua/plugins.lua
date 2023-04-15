return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- fuzzy finder
  use 'junegunn/fzf'
  use 'junegunn/fzf.vim'

  -- basic language pack
  use 'sheerun/vim-polyglot'

  -- langugage server
  use 'neovim/nvim-lspconfig'

  -- directory tree
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-tree/nvim-tree.lua'
end)
