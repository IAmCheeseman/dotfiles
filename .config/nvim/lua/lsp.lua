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

lsp.ccls.setup {
  init_options = {
    compilationDatabaseDirectory = "build",
    index = {
      threads = 0,
    },
    clang = {
      excludeArgs = { "-frounding-math" },
    },
  }
}
