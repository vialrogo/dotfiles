-- Load vim modules
vim.cmd.packadd('nvim.difftool')
vim.cmd.packadd('nvim.undotree')

-- Plugins with non config needed packages
vim.pack.add({
  'https://github.com/dhruvasagar/vim-table-mode',
  'https://github.com/lambdalisue/suda.vim',
  'https://github.com/sainnhe/everforest',
})

-- Import files
require("mappings")
require("options")
require("lsp")
require("autocmds")

-- Theme
vim.cmd.colorscheme('everforest')
