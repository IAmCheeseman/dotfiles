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
  suggest_lsp_servers = false,
  sign_icons = {
    error = "E",
    warn  = "W",
    hint  = "H",
    info  = "I",
  }
}

lsp.on_attach(function(_, buffer)
  local opts = { buffer=buffer, remap=false }

  vim.keymap.set("n", "<leader>ld", function() vim.lsp.buf.definition() end, opts)
end)

lsp.setup()

vim.diagnostic.config {
  virtual_text = true
}
