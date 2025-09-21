-- In your lua/config/keymaps.lua or lua/plugins/snacks.lua
return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      layout = {
        preset = "vscode",
      },
      formatters = {
        file = {
          truncate = 400,
          filename_first = true,
        },
      },
    },
  },
  keys = {
    { "<C-p>", LazyVim.pick("files"), desc = "Find Files (Root Dir)" },
  },
}
