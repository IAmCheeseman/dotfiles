
local packer_path = vim.fn.stdpath('config') .. '/site'
vim.o.packpath = vim.o.packpath .. ',' .. packer_path

require("plugins")
require("plugin_conf")
require("lsp")

-- OPTIONS

local opt = vim.opt

opt.number = true
opt.relativenumber = false
opt.cursorline = true
opt.scrolloff = 4
opt.signcolumn = "yes"

opt.encoding = 'utf8'
opt.fileencoding = 'utf8'
opt.syntax = "ON"
opt.termguicolors = true
vim.api.nvim_command('colorscheme monokai-pro-spectrum')

opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true

opt.expandtab = true
opt.shiftwidth = 2
opt.softtabstop = 2
opt.tabstop = 2

opt.splitright = true
opt.splitbelow = true

-- KEYS

local map = vim.api.nvim_set_keymap

local key = '<space>'
map('i', 'jk', '<escape>', {})
map('n', key .. 'n', [[:NvimTreeToggle<cr>]], {})
map('n', key .. 'f', [[:Telescope find_files<cr>]], {})
map('n', key .. 'g', [[:Git<cr>]], {})
map('n', key .. 'to', [[:TermOpen<cr><cr>]], {})
map('n', key .. 'c', [[:noh<cr>]], {})

map('t', '<escape>', '<C-\\><C-n>', {})

-- Move pane
map('n', '<C-h>', '<C-w>h', {})
map('n', '<C-j>', '<C-w>j', {})
map('n', '<C-k>', '<C-w>k', {})
map('n', '<C-l>', '<C-w>l', {})

