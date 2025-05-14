vim.g.virtcolumn_char = '▕'

require('gitsigns').setup {}

require("Comment").setup {}

require("oil").setup {
  view_options = {
    show_hidden = true,
  },
}

require("presence").setup {}

local colors = {
  white = "#FFFFFF",
  gray = "#A0A0A0",
  green = "#22CC55",
  pink = "#FF4499",
  bg = "#222222",
}

local theme = {
  normal = {
    a = {bg = colors.white, fg = colors.black, gui = 'bold,italic'},
    b = {bg = colors.bg, fg = colors.white},
    c = {bg = colors.bg, fg = colors.white}
  },
  insert = {
    a = {bg = colors.pink, fg = colors.white, gui = 'bold,italic'},
    b = {bg = colors.bg, fg = colors.white},
    c = {bg = colors.bg, fg = colors.white}
  },
  visual = {
    a = {bg = colors.green, fg = colors.white, gui = 'bold,italic'},
    b = {bg = colors.bg, fg = colors.white},
    c = {bg = colors.bg, fg = colors.white}
  },
  replace = {
    a = {bg = colors.pink, fg = colors.white, gui = 'bold,italic'},
    b = {bg = colors.bg, fg = colors.white},
    c = {bg = colors.bg, fg = colors.white}
  },
  command = {
    a = {bg = colors.gray, fg = colors.black, gui = 'bold,italic'},
    b = {bg = colors.bg, fg = colors.white},
    c = {bg = colors.bg, fg = colors.white}
  },
  inactive = {
    a = {bg = colors.pink, fg = colors.white, gui = 'bold,italic'},
    b = {bg = colors.bg, fg = colors.white},
    c = {bg = colors.bg, fg = colors.white}
  }
}

require("lualine").setup {
  options = {
    theme = theme,
    component_separators = { left = "", right = ""  },
    section_separators = { left = "", right = ""  },
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

vim.filetype.add({
  extension = {
    c3 = "c3",
    c3i = "c3",
    c3t = "c3",
  },
})

local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
parser_config.c3 = {
  install_info = {
    url = "https://github.com/c3lang/tree-sitter-c3",
    files = {"src/parser.c", "src/scanner.c"},
    branch = "main",
  },
}

do
  local builtin = require("telescope.builtin")
  require("telescope").setup {
    pickers = {
      find_files = {
        theme = "dropdown",
      }
    }
  }

  vim.keymap.set("n", "<C-o>", builtin.find_files, {})
  vim.keymap.set("n", "<C-g>", builtin.git_files, {})
  vim.keymap.set("n", "<C-f>", function()
  	builtin.grep_string({ search = vim.fn.input("grep>") })
  end)
end

vim.keymap.set("n", "<leader>i", "<CMD>TroubleToggle<CR>")
