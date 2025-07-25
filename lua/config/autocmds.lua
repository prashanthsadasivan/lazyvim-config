-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
--
-- Create a custom command that closes all buffers/tabs and opens dashboard
vim.api.nvim_create_user_command("QA", function()
  -- Get list of normal buffers (listed, real files) before wiping

  -- Wipe only normal buffers (this will prompt to save if needed)
  vim.cmd("silent! %bd")

  -- Close all tabs except the current one
  vim.cmd("silent! tabonly")

  Snacks.dashboard.open({
    bo = {
      bufhidden = "wipe",
      buftype = "nofile",
      buflisted = false,
      filetype = "snacks_dashboard",
      swapfile = false,
      undofile = false,
    },
    win = vim.api.nvim_get_current_win(),
  })

  -- Open the LazyVim dashboard/start screen
  -- LazyVim now uses Snacks.nvim for the dashboard
  --  if package.loaded["snacks"] and require("snacks").dashboard then
  --    require("snacks").dashboard.open()
  --  elseif vim.fn.exists(":Dashboard") == 2 then
  --    vim.cmd("Dashboard")
  --  elseif vim.fn.exists(":Alpha") == 2 then
  --    vim.cmd("Alpha")
  --  else
  --    -- Fallback: create a new empty buffer
  --    vim.cmd("enew")
  --  end
end, { desc = "Close all buffers/tabs and open start screen" })

-- Create a command abbreviation so :qa becomes :QA
vim.cmd("cnoreabbrev qa QA")
vim.cmd("cnoreabbrev qall QA")
