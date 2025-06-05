return {
  "mfussenegger/nvim-dap-python",
  lazy = false,
  config = function()
    require("dap-python").setup("python")
  end
}
