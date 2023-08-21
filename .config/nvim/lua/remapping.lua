vim.g.mapleader = " "

vim.keymap.set("i", "jk", "<escape>", {})
vim.keymap.set("n", "<leader>n", [[:NvimTreeToggle<cr>]], {})
vim.keymap.set("n", "<leader>f", [[:Telescope find_files<cr>]], {})
vim.keymap.set("n", "<leader>g", [[:Git<cr>]], {})
vim.keymap.set("n", "<leader>to", [[:TermOpen<cr><cr>]], {})
vim.keymap.set("n", "<leader>c", [[:noh<cr>]], {})

vim.keymap.set("n", "<C-h>", "<C-w>h", {})
vim.keymap.set("n", "<C-j>", "<C-w>j", {})
vim.keymap.set("n", "<C-k>", "<C-w>k", {})
vim.keymap.set("n", "<C-l>", "<C-w>l", {})

vim.keymap.set("n", "<up>", "<C-u>zz", {})
vim.keymap.set("n", "<down>", "<C-d>zz", {})

vim.keymap.set("o", "as", "a\"", {})
vim.keymap.set("o", "is", "i\"", {})
vim.keymap.set("o", "it", "i[", {})
vim.keymap.set("o", "at", "a[", {})
vim.keymap.set("o", "ic", "i<", {})
vim.keymap.set("o", "ac", "a<", {})

vim.keymap.set("t", "<escape>", "<C-\\><C-n>", {})
vim.keymap.set("t", "jk", "<C-\\><C-n>", {})

vim.keymap.set("n", "<leader>1", ":BufferGoto 1<CR>", {})
vim.keymap.set("n", "<leader>2", ":BufferGoto 2<CR>", {})
vim.keymap.set("n", "<leader>3", ":BufferGoto 3<CR>", {})
vim.keymap.set("n", "<leader>4", ":BufferGoto 4<CR>", {})
vim.keymap.set("n", "<leader>5", ":BufferGoto 5<CR>", {})
vim.keymap.set("n", "<leader>6", ":BufferGoto 6<CR>", {})
vim.keymap.set("n", "<leader>7", ":BufferGoto 7<CR>", {})
vim.keymap.set("n", "<leader>8", ":BufferGoto 8<CR>", {})
vim.keymap.set("n", "<leader>9", ":BufferGoto 9<CR>", {})
vim.keymap.set("n", "<leader>0", ":BufferLast<CR>", {})

vim.keymap.set("n", "<leader>ww", ":BufferClose!<CR>", {})
vim.keymap.set("n", "<leader>wa", ":BufferCloseAllButCurrent<CR>", {})
vim.keymap.set("n", "<leader>wu", ":BufferRestore<CR>", {})
vim.keymap.set("n", "<leader>wl", ":BufferLast<CR>", {})
