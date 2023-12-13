require("Comment").setup {}

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

vim.keymap.set("n", "<leader>df", "<CMD>Neogen<CR>", opts)

require("nvim-treesitter.configs").setup {
  ensure_installed = { "c", "rust", "lua", "vimdoc" },
  sync_install = false,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = true,
  },
  indent = { enable = false },
  rainbow = {
    enable = true,
  }
}

do 
  local builtin = require("telescope.builtin")
  vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
  vim.keymap.set("n", "<leader>fg", builtin.git_files, {})
  vim.keymap.set("n", "<leader>fs", function()
  	builtin.grep_string({ search = vim.fn.input("grep>") })
  end)
end
