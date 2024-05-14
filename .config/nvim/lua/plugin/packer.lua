return require("packer").startup(function(use)
  use {"wbthomason/packer.nvim"}

  use {
    "nvim-telescope/telescope.nvim",
    requires = {
      { "nvim-lua/plenary.nvim"}
    },
  }

  use {"Yggdroot/indentLine"}
  use {"windwp/nvim-autopairs"}

  use {
    "folke/trouble.nvim",
    requires = {
      { "nvim-tree/nvim-web-devicons"},
    }
  }

  use {
    "nvim-lualine/lualine.nvim",
    requires = { "nvim-tree/nvim-web-devicons", opt = true }
  }

  use {"lewis6991/gitsigns.nvim"}
  use {"tpope/vim-fugitive"}
  use {"numToStr/Comment.nvim"}
  use {"HiPhish/nvim-ts-rainbow2"}

  use {
    "VonHeikemen/lsp-zero.nvim",
    requires = {
      -- LSP Support
      {"neovim/nvim-lspconfig"},
      {"williamboman/mason.nvim"},
      {"williamboman/mason-lspconfig.nvim"},

      -- Autocompletion
      {"hrsh7th/nvim-cmp"},
      {"hrsh7th/cmp-buffer"},
      {"hrsh7th/cmp-path"},
      {"saadparwaiz1/cmp_luasnip"},
      {"hrsh7th/cmp-nvim-lsp"},
      {"hrsh7th/cmp-nvim-lua"},

      -- Snippets
      {"L3MON4D3/LuaSnip"},
      {"rafamadriz/friendly-snippets"},
    }
  }

  use { "stevearc/oil.nvim" }

  use {"tikhomirov/vim-glsl"}

  use {"michaeljsmith/vim-indent-object"}

  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate"
  }

  use {
    "loctvl842/monokai-pro.nvim",
  }

  use {
    "danymat/neogen",
    requires = "nvim-treesitter/nvim-treesitter"
  }
end)
