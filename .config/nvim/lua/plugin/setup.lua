
require("Comment").setup {}
require("nvim-lightbulb").setup({
  autocmd = { enabled = true }
})

require("plugin.nvimtree")
require("plugin.treesitter")
require("plugin.presence")
require("plugin.telescope")
require("plugin.autopairs")
require("plugin.lualine")
require("plugin.lsp")
require("plugin.neogen")
