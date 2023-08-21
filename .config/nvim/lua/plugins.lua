return require("packer").startup(function(use)
  use { "ThePrimeagen/vim-be-good" }

  use {
    "kyazdani42/nvim-tree.lua",
    requires = "kyazdani42/nvim-web-devicons"
  }

  use {
    "nvim-telescope/telescope.nvim",
    requires = { { "nvim-lua/plenary.nvim" } }
  }

  use {
    "rebelot/terminal.nvim",
  }

  use { "neovim/nvim-lspconfig" }

  use { "majutsushi/tagbar" }
  use { "Yggdroot/indentLine" }
  use { "tpope/vim-fugitive" }
  use { "junegunn/gv.vim" }
  use { "windwp/nvim-autopairs" }

  use { "mhinz/vim-startify" }
  use { "DanilaMihailov/beacon.nvim" }
  use {
    "nvim-lualine/lualine.nvim",
    requires = { "kyazdani42/nvim-web-devicons", opt = true }
  }
  use { "numToStr/Comment.nvim" }
  use { "romgrk/barbar.nvim" }

  use { "hrsh7th/cmp-nvim-lsp" }
  use { "hrsh7th/cmp-buffer" }
  use { "hrsh7th/cmp-path" }
  use { "hrsh7th/cmp-cmdline" }
  use { "hrsh7th/nvim-cmp" }
  use { "hrsh7th/vim-vsnip" }

  use { "loctvl842/monokai-pro.nvim" }
end)
