if not vim.g.vscode then
  -- Add plugins
  vim.pack.add({
    'https://github.com/pwntester/octo.nvim',
    'https://github.com/nvim-lua/plenary.nvim',
    'https://github.com/nvim-telescope/telescope.nvim',
    'https://github.com/nvim-tree/nvim-web-devicons',
    })

    -- Setup
    require("octo").setup({
      picker = "telescope",
      enable_builtin = true,
      picker_config = {
        use_emojis = true,
      },
      default_merge_method = "rebase",
    })

    -- Keymap configuration
    vim.keymap.set("n", "<leader>oi", "<cmd>Octo issue list<cr>", {})
    vim.keymap.set("n", "<leader>op", "<cmd>Octo pr list<cr>", {})
    vim.keymap.set("n", "<leader>od", "<cmd>Octo discussion list<cr>", {})
    vim.keymap.set("n", "<leader>on", "<cmd>Octo notification list<cr>", {})
    vim.keymap.set("n", "<leader>os",
      function() require("octo.utils").create_base_search_command { include_current_repo = true } end,
      {desc = "Search in Github"})
end
