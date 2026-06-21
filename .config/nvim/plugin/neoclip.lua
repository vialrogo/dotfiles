if not vim.g.vscode then
  -- Add plugin
  vim.pack.add({
    'https://github.com/AckslD/nvim-neoclip.lua',
  })

  -- Setup
  require("neoclip").setup()

  -- Keymap configuration
  vim.keymap.set("n", "<leader>yy", "<cmd>Telescope neoclip<cr>", { desc = "Yanked things" })
end
