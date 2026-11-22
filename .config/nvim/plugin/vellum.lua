if not vim.g.vscode then
  -- Add plugins
  vim.pack.add({
    'https://github.com/blackhat-7/vellum.nvim',
  })

  -- Keymap configuration
  vim.keymap.set('n', '<leader>mp', '<cmd>Vellum<cr><C-w><C-w>_<C-w>|', { desc = 'Markdown preview, focus and zoom it'})
end
