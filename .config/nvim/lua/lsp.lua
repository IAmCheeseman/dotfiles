local lsp = require('lspconfig')
lsp.lua_ls.setup {
  Lua = {
    runtime = {
      version = "LuaJIT",
    },
    telementry = {
      enable = false,
    }
  }
}

lsp.clangd.setup {}
