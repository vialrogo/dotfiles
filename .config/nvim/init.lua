require("mappings")
require("options")

vim.pack.add({
  'https://github.com/dhruvasagar/vim-table-mode',
  'https://github.com/lambdalisue/suda.vim',
  'https://github.com/sainnhe/everforest',
})

-- Theme
vim.cmd.colorscheme('everforest')

--Set the fold to all open.
vim.api.nvim_create_autocmd("BufWinEnter", {
  pattern = "*",
  callback = function()
    vim.cmd("normal! zR")
  end,
})
