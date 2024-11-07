local lsp = require("lsp-zero")
local lspconfig = require("lspconfig")

vim.opt.signcolumn = 'yes'

local lspconfig_defaults = require('lspconfig').util.default_config
lspconfig_defaults.capabilities = vim.tbl_deep_extend(
  'force',
  lspconfig_defaults.capabilities,
  require('cmp_nvim_lsp').default_capabilities()
)

require('mason').setup {}
require('mason-lspconfig').setup {
  ensure_installed = {
    "lua_ls",
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

lsp.on_attach(function(client, buffer)
  local opts = { buffer = buffer, remap = false }

  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "gD", function() vim.lsp.buf.declaration() end, opts)
  vim.keymap.set("n", "gi", function() vim.lsp.buf.implementation() end, opts)
  vim.keymap.set("n", "go", function() vim.lsp.buf.type_definition() end, opts)
  vim.keymap.set("n", "gr", function() vim.lsp.buf.references() end, opts)
  vim.keymap.set("n", "<leader>h", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "<leader>la", function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set("n", "<leader>lrn", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("n", "<leader>ls", function() vim.lsp.buf.signature_help() end, opts)
end)

lsp.setup()

vim.diagnostic.config {
  virtual_text = true
}

vim.g.zig_fmt_autosave = 0
