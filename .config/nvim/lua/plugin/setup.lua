require('gitsigns').setup {}

require("Comment").setup {}

require("lualine").setup {
  options = {
    component_separators = { left = "", right = ""  },
    section_separators = { left = "", right = ""  },
  },
}

require("nvim-autopairs").setup {
  fast_wrap = {
    map = "<M-e>",
    chars = { "<", "{", "[", "(", "\"", "'" },
    pattern = [=[[%"%"%>%]%)%}%,]]=],
    end_key = "$",
    keys = "qwertyuiopzxcvbnmasdfghjkl",
    check_comma = true,
    highlight = "Search",
    highlight_grey="Comment"
  }
}

local neogen = require("neogen")

neogen.setup {
  snippet_engine = "luasnip",
}

vim.keymap.set("n", "<leader>df", "<CMD>Neogen<CR>", {
  silent = true,
})

require("nvim-treesitter.configs").setup {
  ensure_installed = { "c", "cpp", "lua", "vimdoc" },
  sync_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = true,
  },
  indent = { enable = true },
}

do
  local builtin = require("telescope.builtin")
  vim.keymap.set("n", "<C-p>", builtin.find_files, {})
  vim.keymap.set("n", "<C-g>", builtin.git_files, {})
  vim.keymap.set("n", "<C-o>", function()
  	builtin.grep_string({ search = vim.fn.input("grep>") })
  end)
end

vim.keymap.set("n", "<leader>i", "<CMD>TroubleToggle<CR>")
