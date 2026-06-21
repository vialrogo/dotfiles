vim.pack.add({
  'https://github.com/nvim-mini/mini.nvim',
})

if not vim.g.vscode then
  require('mini.icons').setup()
  require('mini.completion').setup()
  require('mini.pairs').setup()
  require('mini.snippets').setup()
  require('mini.cmdline').setup()
end

require('mini.splitjoin').setup()
require('mini.surround').setup()
require('mini.comment').setup()
require('mini.jump').setup()
