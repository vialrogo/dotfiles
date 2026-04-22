-- Add plugins
vim.pack.add({
  'https://github.com/MeanderingProgrammer/render-markdown.nvim',
  'https://github.com/nvim-treesitter/nvim-treesitter',
  'https://github.com/nvim-tree/nvim-web-devicons',
})

-- Setup plugin
require("render-markdown").setup({
  file_types = { "markdown" },
  render_modes = true,
  completions = { lsp = { enabled = true } },
})
