-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}


 	use 'folke/tokyonight.nvim'
 	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use('nvim-treesitter/nvim-treesitter-context')
 	use('nvim-treesitter/playground')
 	use('theprimeagen/harpoon')
 	use('mbbill/undotree')
 	use('tpope/vim-fugitive')
 	use('tpope/vim-commentary')
 	use('mg979/vim-visual-multi')
 	use('preservim/nerdtree')
 	use('ryanoasis/vim-devicons')
 	use('Xuyuanp/nerdtree-git-plugin')
	use('mfussenegger/nvim-dap')
	-- use('luk400/vim-jukit')
	use('joeytwiddle/sexy_scroller.vim')
	use('j-hui/fidget.nvim')
	use('ThePrimeagen/vim-be-good')
	use('ms-jpq/coq_nvim')
	use('rcarriga/nvim-notify')
	use ('stevearc/dressing.nvim')
	use {'nvim-telescope/telescope-ui-select.nvim' }
	use 'tamton-aquib/staline.nvim'

	use {
	    'tanvirtin/vgit.nvim',
	    requires = {
		'nvim-lua/plenary.nvim'
	    }
	}


	use {
	    'chipsenkbeil/distant.nvim',
	    branch = 'v0.2',
	    config = function()
		require('distant').setup {
		    -- Applies Chip's personal settings to every machine you connect to
		    --
		    -- 1. Ensures that distant servers terminate with no connections
		    -- 2. Provides navigation bindings for remote directories
		    -- 3. Provides keybinding to jump into a remote file's parent directory
		    ['*'] = require('distant.settings').chip_default()
		}
	    end
	}



	use {
	    'sudormrfbin/cheatsheet.nvim',

	    requires = {
		{'nvim-telescope/telescope.nvim'},
		{'nvim-lua/popup.nvim'},
		{'nvim-lua/plenary.nvim'},
	    }
	}

	use({
	    'willothy/nvim-cokeline',
	    requires = 'kyazdani42/nvim-web-devicons', -- If you want devicons
	    config = function()
		require('cokeline').setup()
	    end
	})



	use({
	    "kylechui/nvim-surround",
	    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
	    config = function()
		require("nvim-surround").setup({
		    -- Configuration here, or leave empty to use defaults
		})
	    end
	})

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{                                      -- Optional
			'williamboman/mason.nvim',
			run = function()
				pcall(vim.cmd, 'MasonUpdate')
			end,
		},
		{'williamboman/mason-lspconfig.nvim'}, -- Optional

		-- Autocompletion
		{'hrsh7th/nvim-cmp'},     -- Required
		{'hrsh7th/cmp-nvim-lsp'}, -- Required
		{'L3MON4D3/LuaSnip'},     -- Required
	}
}
end)
