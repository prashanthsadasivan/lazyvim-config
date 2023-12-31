-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<C-p>", require("telescope.builtin").find_files)
vim.keymap.set("n", "<C-f>", require("telescope.builtin").live_grep)
vim.keymap.set("n", "gw", ":bnext<cr>", { remap = true })
vim.keymap.set("n", "gW", ":bprev<cr>", { remap = true })
vim.keymap.set("i", "<C-t>", 'copilot#Accept("<CR>")', {
  expr = true,
  replace_keycodes = false,
})
vim.keymap.set("i", "<C-w>", "<Plug>(copilot-accept-word)")
vim.keymap.set("i", "<C-q>", "<Plug>(copilot-accept-line)")
