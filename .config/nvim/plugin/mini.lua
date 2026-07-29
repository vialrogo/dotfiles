vim.pack.add({
  'https://github.com/nvim-mini/mini.nvim',
  'https://github.com/rafamadriz/friendly-snippets',
})

if not vim.g.vscode then
  require('mini.icons').setup()
  require('mini.completion').setup()
  require('mini.pairs').setup()

  local snippets = require('mini.snippets')
  snippets.setup({
    snippets = {
      snippets.gen_loader.from_lang(),
    },
    mappings = {
      expand = '<C-j>',
      jump_next = '<Tab>',
      jump_prev = '<S-Tab>',
      stop = '<C-c>',
    },
  })
  snippets.start_lsp_server()

  require('mini.cmdline').setup()
end

require('mini.splitjoin').setup()
require('mini.surround').setup()
require('mini.comment').setup()
require('mini.jump').setup()
