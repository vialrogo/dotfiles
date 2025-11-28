return {
  "yousefhadder/markdown-plus.nvim",
  ft = { "markdown", "wiki"},
  config = function()
    require("markdown-plus").setup({
      filetypes = { "markdown", "wiki"},  -- Enable for these filetypes
    })
  end,
}
