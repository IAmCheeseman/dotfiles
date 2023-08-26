require("nvim-treesitter.configs").setup {
  ensure_installed = { "c", "rust", "lua", "vimdoc" },
  sync_install = false,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = true,
  },
  indent = { enable = false },
  rainbow = {
    enable = true,
  }
}

