-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- fuzzy finder
  use {
      'nvim-telescope/telescope.nvim', tag = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- status line
  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  -- undos
  use('mbbill/undotree')

  -- colors and parsing
  use('navarasu/onedark.nvim')
  use { "catppuccin/nvim", as = "catppuccin" }
  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

  -- language server
  use {
      'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {
              'williamboman/mason.nvim',
              run = function ()
                  pcall(vim.cmd, 'MasonUpdate')
              end
          },
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'L3MON4D3/LuaSnip'},
	  }
  }

  -- trouble text
  use {
      "folke/trouble.nvim",
      requires = {
          { 'nvim-tree/nvim-web-devicons', opt = true }
      }
  }

  -- formatting
  use('dense-analysis/ale')

  -- git blame
  use('f-person/git-blame.nvim' )

  -- tmux
  use('christoomey/vim-tmux-navigator')

  -- markdown
  use({
      "iamcco/markdown-preview.nvim",
      run = function() vim.fn["mkdp#util#install"]() end,
  })

  -- * mini-ai *
  use('echasnovski/mini.nvim')
end)

