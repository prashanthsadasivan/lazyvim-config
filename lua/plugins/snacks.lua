-- In your lua/config/keymaps.lua or lua/plugins/snacks.lua
return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      layout = {
        preset = "vscode",
      },
      hidden = true,
      cwd = LazyVim.root(),
      --filter = function(entry)
      --  local always_show = {
      --    "%.env.*",
      --    "%.envrc",
      --    "%.env",
      --    "terraform%.tfvars",
      --    ".*%.tfvars", -- This will match any .tfvars file
      --  }

      --  for _, pattern in ipairs(always_show) do
      --    if entry.name:match(pattern) then
      --      return true
      --    end
      --  end

      --  -- Hide gitignored files by default (except those matched above)
      --  return not entry.gitignored
      --end,

      formatters = {
        file = {
          truncate = 400,
          filename_first = true,
        },
      },
    },
  },
  keys = {
    {
      "<C-p>",
      function()
        Snacks.picker.files()
      end,
      mode = "n",
      desc = "Find Files (cwd)",
    },
    {
      "\\",
      function()
        Snacks.explorer()
      end,
      mode = "n",
      desc = "Find Files (cwd)",
    },
  },
}
