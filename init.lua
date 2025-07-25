-- bootstrap lazy.nvim, LazyVim and your plugins
if vim.g.vscode then
  vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Goto Definition" })
  vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "References", nowait = true })
  vim.keymap.set("n", "gI", vim.lsp.buf.implementation, { desc = "Goto Implementation" })
  vim.keymap.set("n", "gy", vim.lsp.buf.type_definition, { desc = "Goto T[y]pe Definition" })
  vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Goto Declaration" })
  vim.keymap.set("n", "K", function()
    return vim.lsp.buf.hover()
  end, { desc = "Hover" })
  vim.keymap.set("n", "<leader>cr", vim.lsp.buf.rename, { desc = "Rename File" })
  vim.keymap.set("n", "<leader>cR", function()
    Snacks.rename.rename_file()
  end, { desc = "Rename File" })
else
  require("config.lazy")
end
