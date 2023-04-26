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
	use('nvim-treesitter/playground')
	use('theprimeagen/harpoon')
	use('mbbill/undotree')
	use('tpope/vim-fugitive')
	use('neoclide/coc.nvim')
	use('vim-airline/vim-airline')
	use('tpope/vim-commentary')
	use('mg979/vim-visual-multi')
	use('preservim/nerdtree')
	use('ryanoasis/vim-devicons')
	use('tiagofumo/vim-nerdtree-syntax-highlight')
	use('Xuyuanp/nerdtree-git-plugin')




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
