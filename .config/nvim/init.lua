require("config.lazy")
require("mappings")
require("autocmds")
require("options")

-- Load treesitter on file open
vim.api.nvim_create_autocmd('FileType', {
  pattern = { '<filetype>' },
  callback = function() vim.treesitter.start() end,
})
