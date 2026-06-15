-- Run on buffer write
vim.api.nvim_create_autocmd("BufWritePre", {
  callback = function(event)
    local can_format = vim.iter(vim.lsp.get_clients({ bufnr = event.buf }))
      :any(function(client)
        return client:supports_method("textDocument/formatting")
      end)

    -- Format with LSP. Format only if supported
    if can_format then
      vim.lsp.buf.format({
        bufnr = event.buf,
        async = false,
      })
    end

    local view = vim.fn.winsaveview()
    vim.cmd([[%s/\s\+$//e]])
    vim.fn.winrestview(view)
  end,
})
