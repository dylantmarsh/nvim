local map = vim.keymap.set

-- Better window movement
map("n", "<C-h>", "<C-w>h", { desc = "Go left" })
map("n", "<C-j>", "<C-w>j", { desc = "Go down" })
map("n", "<C-k>", "<C-w>k", { desc = "Go up" })
map("n", "<C-l>", "<C-w>l", { desc = "Go right" })
map("t", "<C-h>", "<C-\\><C-n><C-w>h", { desc = "Terminal left" })
map("t", "<C-j>", "<C-\\><C-n><C-w>j", { desc = "Terminal down" })
map("t", "<C-k>", "<C-\\><C-n><C-w>k", { desc = "Terminal up" })
map("t", "<C-l>", "<C-\\><C-n><C-w>l", { desc = "Terminal right" })

-- LSP keymaps
map("n", "<leader>ld", vim.lsp.buf.definition, { desc = "Go to definition" })
map("n", "<leader>lr", vim.lsp.buf.references, { desc = "References" })
map("n", "<leader>lh", vim.lsp.buf.hover, { desc = "Hover" })

