-- Add plugin
vim.pack.add({
  'https://github.com/neovim/nvim-lspconfig',
})

-- LSP keymaps (applied when LSP attaches)
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(event)
    local builtin = require("telescope.builtin")
    local bufmap = function(mode, lhs, rhs, desc)
      vim.keymap.set(mode, lhs, rhs, { buffer = event.buf, desc = desc })
    end

    -- Navigation (Telescope-powered)
    bufmap("n", "gr", builtin.lsp_references, "LSP References")
    bufmap("n", "gi", builtin.lsp_implementations, "LSP Implementations")
    bufmap("n", "gt", builtin.lsp_type_definitions, "LSP Type Definitions")

    -- Go to definition
    bufmap("n", "gd", function()
      vim.lsp.buf.definition()
      vim.cmd("normal! zz")
    end, "Go to Definition")

    -- Native LSP
    bufmap("n", "gD", vim.lsp.buf.declaration, "LSP Declaration")
    bufmap("n", "K", vim.lsp.buf.hover, "Hover")

    -- Actions
    bufmap({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, "Code Action")
    bufmap("n", "<leader>rn", vim.lsp.buf.rename, "Rename")

    -- Buffer diagnostics
    bufmap("n", "<leader>D", function()
      builtin.diagnostics({ bufnr = 0 })
    end, "Buffer Diagnostics")

    -- Line diagnostics
    bufmap("n", "<leader>d", vim.diagnostic.open_float, "Line Diagnostics")

    bufmap("n", "[d", vim.diagnostic.goto_prev, "Prev Diagnostic")
    bufmap("n", "]d", vim.diagnostic.goto_next, "Next Diagnostic")
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

-- Format on save
vim.api.nvim_create_autocmd("BufWritePre", {
  callback = function()
    vim.lsp.buf.format({ async = false })
  end,
})

-- Enable servers
vim.lsp.enable("lua_ls")
vim.lsp.enable("pyright")
vim.lsp.enable("texlab")
