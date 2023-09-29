return require("packer").startup(function(use)
  use "wbthomason/packer.nvim"
  use "christoomey/vim-tmux-navigator"

  use {
    "nvim-tree/nvim-tree.lua",
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
  use {
    "folke/trouble.nvim",
    requires = {
      { "nvim-tree/nvim-web-devicons" },
    }
  }

  use {
    "aurum77/live-server.nvim",
    run = function()
      require"live_server.util".install()
    end,
    cmd = { "LiveServer", "LiveServerStart", "LiveServerStop" },
  }

  use {
    "utilyre/barbecue.nvim",
    tag = "*",
    requires = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons", -- optional dependency
    },
    after = "nvim-web-devicons", -- keep this if you're using NvChad
    config = function()
      require("barbecue").setup()
    end,
  }

  use { "tpope/vim-fugitive" }
  use { "mhinz/vim-startify" }
  use { "DanilaMihailov/beacon.nvim" }
  use {
    "nvim-lualine/lualine.nvim",
    requires = { "kyazdani42/nvim-web-devicons", opt = true }
  }
  use { "numToStr/Comment.nvim" }
  use { "HiPhish/nvim-ts-rainbow2" }

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
  use "tikhomirov/vim-glsl"

  use { "kosayoda/nvim-lightbulb" }

  use { "michaeljsmith/vim-indent-object" }

  use {
    "loctvl842/monokai-pro.nvim",
    config = function()
      vim.cmd("colorscheme monokai-pro-spectrum")
    end
  }

  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate"
  }

  use {
    "danymat/neogen",
    requires = "nvim-treesitter/nvim-treesitter"
  }

  use("nvim-treesitter/playground")
end)

