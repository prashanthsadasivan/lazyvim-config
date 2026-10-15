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

      sources = {
        explorer = {
          -- preview highlighted files in the main editor window while navigating
          layout = { preset = "sidebar", preview = "main" },
        },
      },
    },
  },
  keys = {
    {
      -- git log -L fails (noisy "Command failed") on special buffers, untracked files,
      -- and lines past the committed file length, so check first and fall back to file log
      "<leader>gb",
      function()
        local file = vim.api.nvim_buf_get_name(0)
        if vim.bo.buftype ~= "" or file == "" or vim.fn.filereadable(file) == 0 then
          return Snacks.notify.warn("Git blame: focus a file buffer first")
        end
        local line = vim.api.nvim_win_get_cursor(0)[1]
        local dir = vim.fn.fnamemodify(file, ":h")
        local res = vim
          .system({ "git", "log", "--no-patch", "--pretty=format:%h", "-L", line .. ",+1:" .. file }, { cwd = dir })
          :wait()
        if res.code == 0 and res.stdout ~= "" then
          Snacks.picker.git_log_line()
        else
          Snacks.notify.info("Line not in git history yet, showing file log")
          Snacks.picker.git_log_file()
        end
      end,
      desc = "Git Blame Line",
    },
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
