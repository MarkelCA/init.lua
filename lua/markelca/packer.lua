-- This file can be loaded by calling `lua require('plugins')` from your init.vim


-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.2',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use "nvim-lua/plenary.nvim"

  use({
	  'rose-pine/neovim',
	  as = 'rose-pine',
	  config = function()
		  vim.cmd('colorscheme rose-pine')
	  end
  })

  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
          {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }

  use('easymotion/vim-easymotion')

  -- Unless you are still migrating, remove the deprecated commands from v1.x
  vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

  use ({
      "nvim-neo-tree/neo-tree.nvim",
      branch = "v2.x",
      requires = {
          "nvim-lua/plenary.nvim",
          "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
          "MunifTanjim/nui.nvim",
      }
  })

  use {
      'numToStr/Comment.nvim',
      config = function()
          require('Comment').setup()
      end
  }

  use ({
      'mg979/vim-visual-multi',
      branch = 'master',
      config = function()
          vim.g.VM_default_mappings=0
          vim.g.VM_maps = {
              ["Find Under"] = "<C-l>"
          }
      end,
  })

  use {
      "windwp/nvim-autopairs",
      config = function() require("nvim-autopairs").setup {} end
  }

end)
