local lsp = require("lsp-zero")
local lspconfig = require("lspconfig")

lsp.preset("recommended")

lsp.ensure_installed {
  "lua_ls",
  "clangd",
  "cmake",
  "rust_analyzer",
  "omnisharp"
}

lspconfig.gdscript.setup {}

lspconfig.omnisharp.setup {
  cmd = {
    "/usr/bin/omnisharp",
    "--languageserver",
    "--hostPID",
    tostring(vim.fn.getpid())
  }
}

local cmp = require("cmp")
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings {
  ["<down>"] = cmp.mapping.select_next_item(cmp_select),
  ["<up>"] = cmp.mapping.select_prev_item(cmp_select),
  ["<C-a>"] = cmp.mapping.confirm({ select = true }),
  ["<CR>"] = cmp.mapping.confirm({ select = true }),
}

lsp.setup_nvim_cmp {
  mapping = cmp_mappings
}

lsp.set_preferences {
}

lsp.on_attach(function(_, buffer)
  local opts = { buffer=buffer, remap=false }

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
