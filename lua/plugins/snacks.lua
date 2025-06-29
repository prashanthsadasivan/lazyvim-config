-- In your lua/config/keymaps.lua or lua/plugins/snacks.lua
return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        explorer = {
          matcher = { fuzzy = true },
          layout = {
            preset = "telescope",
            preview = true, -- Enable preview window
            reverse = false,
          },
          actions = {
            -- Custom action to directly open file while searching
            open_file = function(picker, item)
              if item and not item.dir then
                Snacks.picker.actions.jump(picker, item, {
                  action = "confirm",
                })

                picker:close() -- Close the explorer after opening the file
              end
            end,
          },
          win = {
            input = {
              keys = {
                ["<cr>"] = { "open_file", mode = "i" }, -- Open file directly from search
                ["<c-p>"] = { "close", mode = "i" }, -- Close explorer with Ctrl-p
              },
            },
          },
        },
      },
    },
  },
  keys = {
    {
      "<C-p>",
      function()
        -- Check if explorer is already open
        local wins = vim.api.nvim_list_wins()
        local explorer_open = false

        for _, win in ipairs(wins) do
          local buf = vim.api.nvim_win_get_buf(win)
          local ft = vim.bo[buf].filetype
          if ft == "snacks_picker_list" then
            explorer_open = true
            vim.api.nvim_win_close(win, false)
            break
          end
        end

        -- If explorer wasn't open, open it
        if not explorer_open then
          Snacks.picker.explorer({ focus = "input" })
        end
      end,
      desc = "Toggle Explorer with Search Focus",
    },
  },
}
