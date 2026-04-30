-- Add plugins
vim.pack.add({
  'https://github.com/nvim-treesitter/nvim-treesitter',
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
  ensure_installed = {
    "lua",
    "python",
    "markdown",
    "c",
    "cpp",
    "latex",
    "yaml",
    "html",
  },
})
