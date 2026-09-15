if not vim.g.vscode then
  -- Add plugins
  vim.pack.add({
    'https://github.com/folke/snacks.nvim',
  })

  -- Keymap configuration
  vim.keymap.set("n", "<leader>gg", function() Snacks.lazygit.open() end, { desc = "Open Lazygit" })
end
