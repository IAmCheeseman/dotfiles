vim.g.virtcolumn_char = '▕'

require('gitsigns').setup {}

require("Comment").setup {}

require("oil").setup {
  view_options = {
    show_hidden = true,
  },
}

require("presence").setup {}

vim.cmd.colorscheme("mine")

local colors = {
  white = "#FFFFFF",
  pink = "#FF4499",
  dark_pink = "#D8225F",
  green = "#22CC55",
  bg = "#222222",
  bg_alt = "#333333",
}

local theme = {
  normal = {
    a = {bg = colors.pink, fg = colors.white, gui = 'bold,italic'},
    b = {bg = colors.bg, fg = colors.white},
    c = {bg = colors.bg, fg = colors.white}
  },
  insert = {
    a = {bg = colors.dark_pink, fg = colors.white, gui = 'bold,italic'},
    b = {bg = colors.bg, fg = colors.white},
    c = {bg = colors.bg, fg = colors.white}
  },
  visual = {
    a = {bg = colors.green, fg = colors.white, gui = 'bold,italic'},
    b = {bg = colors.lightgray, fg = colors.white},
    c = {bg = colors.lightgray, fg = colors.white}
  },
  replace = {
    a = {bg = colors.pink, fg = colors.whtie, gui = 'bold,italic'},
    b = {bg = colors.bg, fg = colors.white},
    c = {bg = colors.bg, fg = colors.white}
  },
  command = {
    a = {bg = colors.bg_alt, fg = colors.black, gui = 'bold,italic'},
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
