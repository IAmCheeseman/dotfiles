vim.g.virtcolumn_char = '▕'

require('gitsigns').setup {}

require("Comment").setup {}

require("oil").setup {
  view_options = {
    show_hidden = true,
  },
}

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
  vim.keymap.set("n", "<C-o>", builtin.find_files, {})
  vim.keymap.set("n", "<C-g>", builtin.git_files, {})
  vim.keymap.set("n", "<C-f>", function()
  	builtin.grep_string({ search = vim.fn.input("grep>") })
  end)
end

vim.keymap.set("n", "<leader>i", "<CMD>TroubleToggle<CR>")
