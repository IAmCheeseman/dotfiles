local lsp = require("lspconfig")

local capabilities = require("cmp_nvim_lsp").default_capabilities(
  vim.lsp.protocol.make_client_capabilities())

lsp.lua_ls.setup({
  capabilities=capabilities,
  Lua = {
    runtime = {
      version = "LuaJIT",
    },
    telementry = {
      enable = false,
    }
  }
})

lsp.clangd.setup {
  capabilities=capabilities,
}

lsp.cmake.setup {}

lsp.gdscript.setup {}

lsp.rust_analyzer.setup({
  capabilities=capabilities,
  settings = {
    ["rust-analyzer"] = {},
  },
})

