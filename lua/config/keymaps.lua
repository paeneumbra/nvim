-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Hover
vim.keymap.set(
    "n",
    "<leader>ch",
    "<cmd>lua vim.lsp.buf.hover()<CR>",
    { noremap = true, silent = true, desc = "Lsp Hover" }
)

-- Go to definition
vim.keymap.set(
    "n",
    "<leader>cD",
    "<cmd>lua vim.lsp.buf.definition()<CR>",
    { noremap = true, silent = true, desc = "Lsp Definition" }
)

-- Find references
vim.keymap.set(
    "n",
    "<leader>cR",
    "<cmd>lua vim.lsp.buf.references()<CR>",
    { noremap = true, silent = true, desc = "Lsp References" }
)
