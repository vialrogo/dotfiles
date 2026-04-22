-- Add plugins
vim.pack.add({
  'https://github.com/lervag/wiki.vim',
})

-- Set the root path
vim.g.wiki_root = "/home/vialrogo/Wiki"

-- Auto load wiki functions on the file type
vim.api.nvim_create_autocmd("FileType", {
  pattern = "md",
  callback = function()
    vim.cmd("WikiEnable")
    vim.opt_local.wrap = true
  end,
})
