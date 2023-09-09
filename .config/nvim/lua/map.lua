vim.keymap.set("i", "jk", "<escape>", {})
vim.keymap.set("n", "<leader>n", [[:NvimTreeToggle<CR>]], {})
vim.keymap.set("n", "<leader>g", [[:Git<CR>]], {})
vim.keymap.set("n", "<leader>c", [[:noh<CR>]], {})
vim.keymap.set("n", "<leader>e", [[:TroubleToggle<CR>]])

vim.keymap.set("n", "<C-h>", "<C-w>h", {})
vim.keymap.set("n", "<C-j>", "<C-w>j", {})
vim.keymap.set("n", "<C-k>", "<C-w>k", {})
vim.keymap.set("n", "<C-l>", "<C-w>l", {})

vim.keymap.set("n", "<C-u>", "u", {})
vim.keymap.set("n", "u", "", {})

vim.keymap.set({ "v", "n" }, ".", "<C-u>", {})
vim.keymap.set({ "v", "n" }, ",", "<C-d>", {})

vim.keymap.set("o", "as", "a\"", {})
vim.keymap.set("o", "is", "i\"", {})
vim.keymap.set("o", "it", "i[", {})
vim.keymap.set("o", "at", "a[", {})
vim.keymap.set("o", "ic", "i<", {})
vim.keymap.set("o", "ac", "a<", {})

vim.keymap.set({ "n", "v" }, "<leader>y", "\"+y", {})
vim.keymap.set({ "n", "v" }, "<leader>v", "\"_", {})

vim.keymap.set("n", "<up>", "<nop>", { noremap = true })
vim.keymap.set("n", "<down>", "<nop>", { noremap = true })
