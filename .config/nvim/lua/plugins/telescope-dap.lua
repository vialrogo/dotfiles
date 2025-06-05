return {
  'nvim-telescope/telescope-dap.nvim',
  lazy = false,
  dependencies = {
    'mfussenegger/nvim-dap',
    'nvim-telescope/telescope.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
  config = function()
    require('telescope').load_extension('dap')
  end
}
