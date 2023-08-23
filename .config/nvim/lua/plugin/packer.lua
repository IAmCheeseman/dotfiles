return require("packer").startup(function(use)
  use 'wbthomason/packer.nvim'

  use { "ThePrimeagen/vim-be-good" }

  use {
     "kyazdani42/nvim-tree.lua",
     requires = "kyazdani42/nvim-web-devicons"
   }

  use {
    "nvim-telescope/telescope.nvim",
    requires = { { "nvim-lua/plenary.nvim" } }
  }

  use { "majutsushi/tagbar" }
  use { "Yggdroot/indentLine" }
  use { "windwp/nvim-autopairs" }
  use { "airblade/vim-gitgutter" }

  use { "weedatom/presence.nvim" }
  use { "mhinz/vim-startify" }
  use { "DanilaMihailov/beacon.nvim" }
  use {
    "nvim-lualine/lualine.nvim",
    requires = { "kyazdani42/nvim-web-devicons", opt = true }
  }
  use { "numToStr/Comment.nvim" }
  use { "folke/zen-mode.nvim" }

  use {
    'VonHeikemen/lsp-zero.nvim',
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

  use {
    "loctvl842/monokai-pro.nvim",
    config = function()
      vim.cmd("colorscheme monokai-pro")
    end
  }
  use {
    "catppuccin/nvim",
    as = "catppuccin",
  }

  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate"
  }
  use("nvim-treesitter/playground")
end)
