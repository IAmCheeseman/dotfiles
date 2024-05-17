local lsp = require("lsp-zero")
local lspconfig = require("lspconfig")

lsp.preset("recommended")

lspconfig.lua_ls.setup {}
lspconfig.clangd.setup {}
lspconfig.gdscript.setup {}

require('mason').setup {}
require('mason-lspconfig').setup {
  ensure_installed = {
    "lua_ls",
    "rust_analyzer",
    "clangd",
  },
  handlers = {
    lsp.default_setup,
  },
}

local cmp = require('cmp')
cmp.setup {
  mapping = cmp.mapping.preset.insert({
    -- `Enter` key to confirm completion
    ['<CR>'] = cmp.mapping.confirm({ select = false }),
    -- `Tab` key to navigate
    ['<S-Tab>'] = cmp.mapping.select_prev_item({ behavior = 'select' }),
    ['<Tab>'] = cmp.mapping.select_next_item({ behavior = 'select' }),
  })
}

require("lsp-format").setup {}
require("lspconfig").clangd.setup {
  on_attach = require("lsp-format").on_attach
}

lsp.on_attach(function(client, buffer)
  local opts = { buffer = buffer, remap = false }

  vim.keymap.set("n", "<leader>ld", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "<leader>h", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "<leader>la", function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set("n", "<leader>lrf", function() vim.lsp.buf.references() end, opts)
  vim.keymap.set("n", "<leader>lrn", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("n", "<leader>ls", function() vim.lsp.buf.signature_help() end, opts)
end)

lsp.setup()

vim.diagnostic.config {
  virtual_text = true
}
