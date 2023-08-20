local packer_path = vim.fn.stdpath('config') .. '/site'
vim.o.packpath = vim.o.packpath .. ',' .. packer_path

require("plugins")
require("plugin_conf")
require("autocomplete")
require("lsp")
require("set")
require("remapping")
