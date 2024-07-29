return {
  "folke/which-key.nvim",
  opts = {
    plugins = { spelling = true },
    defaults = {
      ["<leader>x"] = { name = "+diagnostics/quickfix/xcodebuild" },
      ["<leader>a"] = { name = "+chatgpt" },
    },
  },
}
