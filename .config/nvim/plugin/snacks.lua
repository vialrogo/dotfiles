if not vim.g.vscode then
  -- Add plugins
  vim.pack.add({
    'https://github.com/folke/snacks.nvim',
  })

  -- Setup plugin
  require("snacks").setup({
    notifier = { enabled = true },
    scope = { enabled = true },
    scroll = { enabled = true },
    statuscolumn = { enabled = true },
  })

  -- Keymap configuration
  vim.keymap.set("n", "<leader>gg", function() Snacks.lazygit.open() end, { desc = "Open Lazygit" })
end
