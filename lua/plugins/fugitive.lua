return {
  {
    "tpope/vim-fugitive",
    dependencies = {
      "tpope/vim-rhubarb",
    },
    cmd = "GBrowse",
    keys = {
      { "<leader>gB", "<cmd>GBrowse<CR>", desc = "GBrowse", mode = { "n" } },
    },
  },
}
