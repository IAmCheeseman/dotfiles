vim.o.termguicolors = true
vim.o.relativenumber = true
vim.o.number = true
vim.o.cursorline = true
vim.o.cursorlineopt = "line"
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.mouse = ""
vim.o.cc = "80"
vim.o.splitright = true
vim.o.splitbelow = true
local tabwidth = 2
vim.o.tabstop = tabwidth
vim.o.shiftwidth = tabwidth
vim.o.expandtab = true

-- Disable line numbers in terminal
vim.api.nvim_create_autocmd("TermOpen", {
  callback = function()
    vim.o.number = false
    vim.o.relativenumber = false
  end,
})

vim.cmd.colorscheme("mine")
