-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("i", "<C-t>", 'copilot#Accept("<CR>")', {
  expr = true,
  replace_keycodes = false,
})
vim.keymap.set("i", "<C-w>", "<Plug>(copilot-accept-word)")
vim.keymap.set("i", "<C-q>", "<Plug>(copilot-accept-line)")

-- Regular q closes current buffer
vim.cmd("cnoreabbrev q bd")

-- delete the default crappy git browse via lazygit
-- vim.keymap.del("n", "<leader>gB")
-- vim.api.nvim_set_keymap(
--   "n",
--   "<LocalLeader>r",
--   ":MagmaEvaluateOperator<CR>",
--   { silent = true, expr = true, noremap = true }
-- )
-- vim.api.nvim_set_keymap("n", "<LocalLeader>rr", ":MagmaEvaluateLine<CR>", { silent = true, noremap = true })
-- vim.api.nvim_set_keymap("x", "<LocalLeader>r", ":<C-u>MagmaEvaluateVisual<CR>", { silent = true, noremap = true })
-- vim.api.nvim_set_keymap("n", "<LocalLeader>rc", ":MagmaReevaluateCell<CR>", { silent = true, noremap = true })
-- vim.api.nvim_set_keymap("n", "<LocalLeader>rd", ":MagmaDelete<CR>", { silent = true, noremap = true })
-- vim.api.nvim_set_keymap("n", "<LocalLeader>ro", ":MagmaShowOutput<CR>", { silent = true, noremap = true })
