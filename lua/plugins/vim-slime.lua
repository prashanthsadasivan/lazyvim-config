vim.g.slime_no_mappings = 1
return {
  "jpalardy/vim-slime",
  config = function()
    vim.g.slime_target = "tmux"
    vim.keymap.set("v", "<space>sc", "<Plug>SlimeRegionSend")
    vim.keymap.set("n", "<space>sc", "<Plug>SlimeLineSend")
    vim.keymap.set("n", "<space>sv", "<Plug>SlimeConfig")
  end,
}
