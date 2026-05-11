-- Add plugins
vim.pack.add({
  'https://github.com/NeogitOrg/neogit',
  'https://github.com/esmuellert/codediff.nvim',
  'https://github.com/m00qek/baleia.nvim',  -- Optional for a custom log pager
  'https://github.com/nvim-telescope/telescope.nvim',
})

require("telescope").setup()

-- Keymap configuration
vim.keymap.set("n", "<leader>gg",  "<cmd>Neogit<cr>", { desc = "Show Neogit UI" })
