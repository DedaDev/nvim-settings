return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim' 

  use 'tiagovla/tokyodark.nvim'
  use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional, for file icons
  },
  tag = 'nightly' -- optional, updated every week. (see issue #1193)
}
	use 'ryanoasis/vim-devicons'
  use {
  'nvim-lualine/lualine.nvim',
     requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

	use 'pangloss/vim-javascript'
	use 'leafgarland/typescript-vim'
	
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
	
	use 'akinsho/toggleterm.nvim'
  use 'folke/trouble.nvim'

  use 'tpope/vim-fugitive'
end)
