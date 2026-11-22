-- Add plugins
vim.pack.add({
  'https://github.com/lervag/wiki.vim',
  'https://github.com/nvim-lua/plenary.nvim',
  'https://github.com/nvim-telescope/telescope.nvim',
  'https://github.com/nvim-tree/nvim-web-devicons',
})

-- options
vim.g.wiki_root = "/home/vialrogo/Wiki"
vim.g.wiki_filetypes = { "md" }

-- Keymap configurastion
local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>fd",
  function()
    builtin.find_files({ cwd = "/home/vialrogo/Wiki" })
  end,
  { desc = "Find Files on Wiki" }
)
vim.keymap.set("n", "<leader>fw",
  function()
    builtin.live_grep({ cwd = "/home/vialrogo/Wiki" })
  end,
  { desc = "Live grep on Wiki" }
)

-- Autocommands
vim.api.nvim_create_autocmd("FileType", {
  pattern = "md",
  callback = function()
    vim.cmd("WikiEnable")
    vim.opt_local.wrap = true
  end,
})
