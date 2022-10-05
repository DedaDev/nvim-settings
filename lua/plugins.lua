return require('packer').startup(function(use)
	use 'doums/darcula' 
	use 'preservim/nerdtree'
	use 'ryanoasis/vim-devicons'
	use 'vim-airline/vim-airline'
	
	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-vsnip'
	use 'hrsh7th/vim-vsnip'

	use 'nvim-lua/plenary.nvim'
	use { 'nvim-telescope/telescope.nvim', tag = '0.1.0',}
	
	use 'tc50cal/vim-terminal'
end)
