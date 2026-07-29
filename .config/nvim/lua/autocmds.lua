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

-- Terraform's formatter is a CLI tool rather than an LSP formatter.  Format
-- the buffer through stdin so the result is written by this save operation.
local terraform_format_group = vim.api.nvim_create_augroup("TerraformFormat", { clear = true })

vim.api.nvim_create_autocmd("BufWritePre", {
  group = terraform_format_group,
  pattern = { "*.tf", "*.tfvars" },
  callback = function(event)
    if vim.fn.executable("terraform") ~= 1 then
      return
    end

    local input = table.concat(vim.api.nvim_buf_get_lines(event.buf, 0, -1, false), "\n")
    if vim.bo[event.buf].endofline then
      input = input .. "\n"
    end

    local result = vim.system({ "terraform", "fmt", "-" }, {
      stdin = input,
      text = true,
    }):wait()

    if result.code ~= 0 then
      vim.notify("terraform fmt failed: " .. (result.stderr or "unknown error"), vim.log.levels.WARN)
      return
    end

    local lines = vim.split(result.stdout or "", "\n", { plain = true })
    if lines[#lines] == "" then
      table.remove(lines)
    end

    local view = vim.fn.winsaveview()
    vim.api.nvim_buf_set_lines(event.buf, 0, -1, false, lines)
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
