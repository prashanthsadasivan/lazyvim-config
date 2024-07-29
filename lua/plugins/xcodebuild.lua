return {
  "wojciech-kulik/xcodebuild.nvim",
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-tree.lua", -- (optional) to manage project files
    "stevearc/oil.nvim", -- (optional) to manage project files
    "nvim-treesitter/nvim-treesitter", -- (optional) for Quick tests support (required Swift parser)
  },
  keys = {
    { "<leader>xb", "<cmd>XcodebuildBuild<cr>", desc = "Build Project" },
    { "<leader>xr", "<cmd>XcodebuildBuildRun<cr>", desc = "Build & Run Project" },
    { "<leader>xu", "<cmd>XcodebuildTest<cr>", desc = "Run Tests" },
    { "<leader>xU", "<cmd>XcodebuildTestClass<cr>", desc = "Run This Test Class" },
    { "<leader>X", "<cmd>XcodebuildPicker<cr>", desc = "Show All Xcodebuild Actions" },
    { "<leader>xd", "<cmd>XcodebuildSelectDevice<cr>", desc = "Select Device" },
    { "<leader>xp", "<cmd>XcodebuildSelectTestPlan<cr>", desc = "Select Test Plan" },
    { "<leader>xc", "<cmd>XcodebuildToggleCodeCoverage<cr>", desc = "Toggle Code Coverage" },
    { "<leader>xC", "<cmd>XcodebuildShowCodeCoverageReport<cr>", desc = "Show Code Coverage Report" },
    { "<leader>xq", "<cmd>Telescope quickfix<cr>", desc = "Show QuickFix List" },
  },
  config = function()
    require("xcodebuild").setup({
      -- put some options here or leave it empty to use default settings
      --     vim.keymap.set("n", "<leader>xl", "<cmd>XcodebuildToggleLogs<cr>", desc = "Toggle Xcodebuild Logs" })
    })
  end,
}
