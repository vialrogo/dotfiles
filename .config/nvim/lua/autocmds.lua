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

-- Options to auto save and load views of the files
local group = vim.api.nvim_create_augroup("AutoView", { clear = true })

vim.api.nvim_create_autocmd("BufWinLeave", {
  group = group,
  callback = function(args)
    if vim.bo[args.buf].buftype == "" then
      vim.cmd("silent! mkview")
    end
  end,
})

vim.api.nvim_create_autocmd("BufWinEnter", {
  group = group,
  callback = function(args)
    if vim.bo[args.buf].buftype == "" then
      vim.defer_fn(function()
        pcall(vim.cmd, "silent! loadview")
      end, 100)
    end
  end,
})
