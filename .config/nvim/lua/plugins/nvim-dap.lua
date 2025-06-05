return {
  "mfussenegger/nvim-dap",
  lazy = false,
  config = function()
    local dap = require("dap")

    vim.keymap.set('n', '<F5>', function() dap.continue() end)
    vim.keymap.set('n', '<F6>', function() dap.toggle_breakpoint() end)

    vim.keymap.set('n', '<Leader>dn', function() dap.step_over() end)
    vim.keymap.set('n', '<Leader>di', function() dap.step_into() end)
    vim.keymap.set('n', '<Leader>do', function() dap.step_out() end)
    
    vim.keymap.set('n', '<Leader>ds', function()
      local widgets = require('dap.ui.widgets')
      widgets.centered_float(widgets.scopes)
    end)
  end,
}
