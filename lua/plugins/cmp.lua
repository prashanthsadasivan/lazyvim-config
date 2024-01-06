local function toggle_cmp()
  local cmp = require("cmp")
  if cmp then
    if cmp.get_config().enabled then
      -- Disable nvim-cmp
      cmp.setup({ enabled = false })
    else
      -- Enable nvim-cmp
      cmp.setup({ enabled = true })
    end
  end
end

-- Creating a command in normal mode
vim.api.nvim_create_user_command("ToggleCmp", toggle_cmp, {})
