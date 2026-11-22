if not vim.g.vscode then
  -- Add plugins
  vim.pack.add({
    {
      src = 'https://github.com/nvim-neo-tree/neo-tree.nvim',
      version = vim.version.range('3')
    },
    -- dependecies
    'https://github.com/nvim-lua/plenary.nvim',
    'https://github.com/MunifTanjim/nui.nvim',
    -- optional, but recommended
    'https://github.com/nvim-tree/nvim-web-devicons',
  })

  -- Setup
  require("neo-tree").setup({
    close_if_last_window = true,
    popup_border_style = "",
    clipboard = {
      sync = "universal",
    },
    enable_diagnostics = false,
    defaul_component_configs = {
      icon = {
        use_filtered_colors = false,
      },
      name = {
        use_filtered_colors = false,
      },
    },
    git_status = {
      symbols = {
        added = "✚",
        modified = "",
      },
    },
    filesystem = {
      filtered_items = {
        vilibe = true,
      },
    },
  })

  -- Keymap configuration
  vim.keymap.set("n", "<F2>", ":Neotree toggle<CR>")
  vim.keymap.set("n", "<F3>",
    function()
      local neotree_wins = vim.tbl_filter(
        function(win)
          local buf = vim.api.nvim_win_get_buf(win)
          return vim.bo[buf].filetype == "neo-tree"
        end,
        vim.api.nvim_list_wins()
      )

      if #neotree_wins == 0 then
        vim.cmd("Neotree show focus")
        return
      end

      local current = vim.api.nvim_get_current_win()
      if current == neotree_wins[1] then
        vim.api.nvim_set_current_win(vim.fn.win_getid(vim.fn.winnr('#')))
      else
        vim.api.nvim_set_current_win(neotree_wins[1])
      end
    end
  )

end

