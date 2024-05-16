vim.g.mapleader = " "

local nv = {"n", "v"}

vim.keymap.set(nv, "gm", "gM", {})
vim.keymap.set(nv, "gM", "gMi", {})

-- Moving between windows
vim.keymap.set(nv, "<C-h>", "<C-w>h", {})
vim.keymap.set(nv, "<C-j>", "<C-w>j", {})
vim.keymap.set(nv, "<C-k>", "<C-w>k", {})
vim.keymap.set(nv, "<C-l>", "<C-w>l", {})

-- Same, but for terminal
vim.keymap.set("t", "<C-h>", "<C-\\><C-n><C-w>h", {})
vim.keymap.set("t", "<C-j>", "<C-\\><C-n><C-w>j", {})
vim.keymap.set("t", "<C-k>", "<C-\\><C-n><C-w>k", {})
vim.keymap.set("t", "<C-l>", "<C-\\><C-n><C-w>l", {})

-- Moving windows
vim.keymap.set(nv, "<C-w>h", "<C-w>H", {})
vim.keymap.set(nv, "<C-w>j", "<C-w>J", {})
vim.keymap.set(nv, "<C-w>k", "<C-w>K", {})
vim.keymap.set(nv, "<C-w>l", "<C-w>L", {})

-- Resizing windows
vim.keymap.set(nv, "<C-->", "<C-w>-", {})
vim.keymap.set(nv, "<C-=>", "<C-w>+", {})
vim.keymap.set(nv, "<C-,>", "<C-w><", {})
vim.keymap.set(nv, "<C-.>", "<C-w>>", {})

-- Make exiting insert mode in terminal mode easier
vim.keymap.set("t", "<ESC>", "<C-\\><C-n>", {})

-- Center when moving around at high speeds
vim.keymap.set(nv, "<C-u>", "<C-u>zz", {})
vim.keymap.set(nv, "<C-d>", "<C-d>zz", {})
vim.keymap.set(nv, "G", "Gzz", {})

-- Make going to the end of a line as easy as going to the beginning
vim.keymap.set({"n", "v", "o"}, "+", "$", {})

-- Allow yanking to system clipboard
vim.keymap.set(nv, "<leader>y", "\"+y", {})
vim.keymap.set(nv, "<leader>p", "\"+p", {})

-- Commands
vim.keymap.set(nv, "<leader>c", "<CMD>set invhlsearch<CR>", {silent=true})
vim.keymap.set(nv, "<leader>e", "<CMD>Oil<CR>", {silent=true})
vim.keymap.set(nv, "<leader>t", function()
  vim.cmd("split")
  vim.cmd("term")
end, {silent=true})

-- Common typo with me
vim.api.nvim_create_user_command("W",   "w",   {bang=true})
vim.api.nvim_create_user_command("Wa",  "wa",  {bang=true})
vim.api.nvim_create_user_command("Wq",  "wq",  {bang=true})
vim.api.nvim_create_user_command("Wqa", "wqa", {bang=true})
vim.api.nvim_create_user_command("Q",   "q",   {bang=true})
vim.api.nvim_create_user_command("Qa",  "qa",  {bang=true})
