return require('packer').startup(function(use)
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons'
  }
  
  use {
    'nvim-telescope/telescope.nvim',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  use {
    'rebelot/terminal.nvim',
  }

  use { 'neovim/nvim-lspconfig' }

  use { 'majutsushi/tagbar' }
  use { 'Yggdroot/indentLine' }
  use { 'tpope/vim-fugitive' }
  use { 'junegunn/gv.vim' }
  use { 'windwp/nvim-autopairs' }
  
  use { 'mhinz/vim-startify' }
  use { 'DanilaMihailov/beacon.nvim' }
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use { 'Mofiqul/dracula.nvim' }
end)
