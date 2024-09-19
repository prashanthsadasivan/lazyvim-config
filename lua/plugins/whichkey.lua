return {
  "folke/which-key.nvim",
  opts = {
    plugins = { spelling = true },
    spec = {
      { "<leader>x", group = "+diagnostics/quickfix/xcodebuild" },
      { "<leader>a", group = "+chatgpt" },
    },
  },
}
