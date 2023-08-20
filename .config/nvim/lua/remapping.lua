vim.g.mapleader = " "

vim.keymap.set('i', 'jk', '<escape>', {})
vim.keymap.set('n', '<leader>n', [[:NvimTreeToggle<cr>]], {})
vim.keymap.set('n', '<leader>f', [[:Telescope find_files<cr>]], {})
vim.keymap.set('n', '<leader>g', [[:Git<cr>]], {})
vim.keymap.set('n', '<leader>to', [[:TermOpen<cr><cr>]], {})
vim.keymap.set('n', '<leader>c', [[:noh<cr>]], {})

vim.keymap.set('n', '<C-h>', '<C-w>h', {})
vim.keymap.set('n', '<C-j>', '<C-w>j', {})
vim.keymap.set('n', '<C-k>', '<C-w>k', {})
vim.keymap.set('n', '<C-l>', '<C-w>l', {})

vim.keymap.set('o', 'as', 'a"', {})
vim.keymap.set('o', 'is', 'i"', {})
vim.keymap.set('o', 'it', 'i[', {})
vim.keymap.set('o', 'at', 'a[', {})
vim.keymap.set('o', 'ic', 'i<', {})
vim.keymap.set('o', 'ac', 'a<', {})

vim.keymap.set('t', '<escape>', '<C-\\><C-n>', {})
vim.keymap.set('t', 'jk', '<C-\\><C-n>', {})

