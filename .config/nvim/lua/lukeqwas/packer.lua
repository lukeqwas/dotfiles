vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.5',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }


  use({
      'sainnhe/gruvbox-material',
      as = 'gruvbox-material',
      config = function()
          vim.cmd('colorscheme gruvbox-material')
	  end
  })

  use ('nvim-treesitter/nvim-treesitter', {run = 'TSUpdate'})
  use ('nvim-treesitter/playground')
  use ('ThePrimeagen/harpoon')
  use ('mbbill/undotree')
  use ('tpope/vim-fugitive')

  use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v3.x',
      requires = {
          --- Uncomment the two plugins below if you want to manage the language servers from neovim
          -- {'williamboman/mason.nvim'},
          -- {'williamboman/mason-lspconfig.nvim'},

          -- LSP Support
          {'neovim/nvim-lspconfig'},
          -- Autocompletion
          {'hrsh7th/nvim-cmp'},
          {'hrsh7th/cmp-nvim-lsp'},
          {'L3MON4D3/LuaSnip'},
          {"williamboman/mason.nvim"},
          {"williamboman/mason-lspconfig.nvim"},
      }
  }

end)
