-- Add plugins
vim.pack.add({
  'https://github.com/MeanderingProgrammer/render-markdown.nvim',
  'https://github.com/nvim-treesitter/nvim-treesitter',
  'https://github.com/nvim-tree/nvim-web-devicons',
})

-- Setup plugin
require("render-markdown").setup({
  file_types = { "markdown" },
  sign = { enabled = false },
  render_modes = true,
  completions = { lsp = { enabled = true } },
  quote = { repeat_linebreak = true },
  checkbox = {
    unchecked = {
      icon = '□ ',
      highlight = 'RenderMarkdownInfo'
    }, -- [ ]
    checked = {
      icon = '✘ ',
      highlight = 'RenderMarkdownError'
    }, -- [x]
    custom = {
      todo = {
        raw = '[-]',
        rendered = '✓ ',
        highlight = 'RenderMarkdownTodo'
      }, -- [-]
      important = {
        raw = '[~]',
        rendered = '󰓎 ',
        highlight = 'DiagnosticWarn',
      }, -- [~]
      waiting = {
        raw = '[=]',
        rendered = '󰥔 ',
        highlight = 'RenderMarkdownHtmlComment',
      }, -- [=]
    },
  },
})
