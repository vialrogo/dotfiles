-- Add plugins
vim.pack.add({
  'https://github.com/lervag/wiki.vim',
  'https://github.com/lervag/wiki-ft.vim',
})

-- Global config
vim.g.wiki_root = "/home/vialrogo/Wiki"
vim.g.wiki_filetypes = { "wiki" }

-- Autocommands
vim.api.nvim_create_autocmd("FileType", {
  pattern = "wiki",
  callback = function()
    vim.cmd("WikiEnable")
    vim.opt_local.wrap = true
  end,
})
