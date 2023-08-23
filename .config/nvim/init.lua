local packer_path = vim.fn.stdpath("config") .. "/site"
vim.o.packpath = vim.o.packpath .. ',' .. packer_path
vim.g.mapleader = " "

require("plugin")
require("set")
require("map")
