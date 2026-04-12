-- Add plugins
vim.pack.add({
  { src = "https://github.com/nvim-treesitter/nvim-treesitter", version = 'main' },
})

-- Setup
require("nvim-treesitter").setup({
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "<CR>",
      node_incremental = "<CR>",
      node_decremental = "<BS>",
      scope_incremental = "<C-s>",
    },
  },
})

-- Language configurations
vim.treesitter.language.register("markdown", "wiki") -- Force use org rules for wiki files for no error message
