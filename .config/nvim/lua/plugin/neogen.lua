local neogen = require("neogen")

neogen.setup {
  snippet_engine = "luasnip",
  languages = {
    cs = {
      template = {
        annotation_convention = "xmldoc",
      },
    },
  },
}

local opts = {
  silent = true,
}

vim.keymap.set("n", "<leader>df", ":Neogen<CR>", opts)

