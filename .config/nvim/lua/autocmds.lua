--Set the fold to all open when enter the buffer window
vim.api.nvim_create_autocmd("BufWinEnter", {
  pattern = "*",
  callback = function()
    vim.cmd("normal! zR")
  end,
})

-- Run on buffer write
vim.api.nvim_create_autocmd("BufWritePre", {
  callback = function(event)
    -- Format with LSP. Format only if supported
    local clients = vim.lsp.get_clients({ bufnr = event.buf })
    if #clients > 0 then
      vim.lsp.buf.format({
        async = false,
        bufnr = event.buf,
      })
    end

    -- Trim whitespace
    local view = vim.fn.winsaveview()
    vim.cmd([[%s/\s\+$//e]])
    vim.fn.winrestview(view)
  end,
})
