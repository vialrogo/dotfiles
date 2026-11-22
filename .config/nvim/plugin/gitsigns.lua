-- Add plugins
vim.pack.add({
  'https://github.com/lewis6991/gitsigns.nvim',
  })

  -- Setup
  require("gitsigns").setup()

  -- Keymap configuration
  vim.keymap.set("n", "<leader>gh", ":Gitsigns preview_hunk_inline<cr>", {})
  vim.keymap.set("n", "<leader>gb", ":Gitsigns toggle_current_line_blame<cr>", {})
