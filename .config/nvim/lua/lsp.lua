-- LSP keymaps (applied when LSP attaches)
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(event)
    local bufmap = function(mode, lhs, rhs, desc)
      vim.keymap.set(mode, lhs, rhs, { buffer = event.buf, desc = desc })
    end

    bufmap("n", "gD", vim.lsp.buf.declaration, "LSP Declaration")
    bufmap("n", "K", vim.lsp.buf.hover, "Hover")
    bufmap({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, "Code Action")
    bufmap("n", "<leader>rn", vim.lsp.buf.rename, "Rename")
    bufmap("n", "<leader>d", vim.diagnostic.open_float, "Line Diagnostics")
    bufmap("n", "[d", vim.diagnostic.goto_prev, "Prev Diagnostic")
    bufmap("n", "]d", vim.diagnostic.goto_next, "Next Diagnostic")

    -- Go to definition and center the buffer
    bufmap("n", "gd", function()
      vim.lsp.buf.definition()
      vim.cmd("normal! zz")
    end, "Go to Definition")
  end,
})

-- Diagnostic signs
vim.diagnostic.config({
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = " ",
      [vim.diagnostic.severity.WARN]  = " ",
      [vim.diagnostic.severity.HINT]  = "󰠠 ",
      [vim.diagnostic.severity.INFO]  = " ",
    },
    numhl = {
      [vim.diagnostic.severity.ERROR] = "",
      [vim.diagnostic.severity.WARN]  = "",
      [vim.diagnostic.severity.HINT]  = "",
      [vim.diagnostic.severity.INFO]  = "",
    },
  },
  underline = true,
  virtual_text = false,
  severity_sort = true,
})
