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
	  'rose-pine/neovim',
	  as = 'rose-pine',
	  config = function()
		  vim.cmd('colorscheme rose-pine')
	  end
  })

  use 'neovim/nvim-lspconfig'
  use 'simrat39/rust-tools.nvim'
  local rt = require("rust-tools")

  rt.setup({
      server = {
          on_attach = function(_, bufnr)
              -- Hover actions
              vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
              -- Code action groups
              vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
          end,
      },
  })

end)
