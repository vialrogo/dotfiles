local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    { import = "plugins" },
    -- {'neovim/nvim-lspconfig',                                   -- For lsp lenguage servers
    --     dependencies =  { 'hrsh7th/cmp-nvim-lsp',
    --                       { 'antosha417/nvim-lsp-file-operations', config = true },
    --                     },
    -- },
})
