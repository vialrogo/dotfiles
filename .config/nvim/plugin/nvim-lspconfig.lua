-- Add plugin
vim.pack.add({
  'https://github.com/neovim/nvim-lspconfig',
})

-- Enable servers
vim.lsp.enable("lua_ls")
vim.lsp.enable("pyright")
vim.lsp.enable("texlab")
vim.lsp.enable("marksman")
vim.lsp.enable("clangd") -- For correct work, the project need to have the "compile_commands.json" file (exported by cmake e.g.)
vim.lsp.enable("omnisharp")
