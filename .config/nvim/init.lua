local packer_path = vim.fn.stdpath("config") .. "/site"
vim.o.packpath = vim.o.packpath .. ',' .. packer_path
vim.g.mapleader = " "

require("plugins")
require("plugin.setup")
require("plugin.treesitter")
require("plugin.presence")
require("plugin.telescope")
require("plugin.autopairs")
require("plugin.lualine")
require("plugin.lsp")

require("set")
require("map")
