-- Add plugins
vim.pack.add({
  'https://github.com/nvim-tree/nvim-tree.lua',
  'https://github.com/nvim-tree/nvim-web-devicons',
})

-- Custom on_attach
local function my_on_attach(bufnr)
  local api = require("nvim-tree.api")

  local function opts(desc)
    return {
      desc = "nvim-tree: " .. desc,
      buffer = bufnr,
      noremap = true,
      silent = true,
      nowait = true,
    }
  end

  -- default mappings
  api.config.mappings.default_on_attach(bufnr)

  -- custom mappings
  vim.keymap.set("n", "?", api.tree.toggle_help, opts("Help"))
  vim.keymap.set("n", "<M-Left>", api.tree.change_root_to_parent, opts("Up"))
  vim.keymap.set("n", "<M-Right>", api.tree.change_root_to_node, opts("Set as root"))
  vim.keymap.set("n", "<leader>cd",
    function()
      local api = require("nvim-tree.api")
      local path = vim.fn.expand("%:p:h") -- current file directory
      api.tree.change_root(path)
    end, { desc = "NvimTree: root to current file dir" })
end

-- Setup
require("nvim-tree").setup({
  filters = { dotfiles = true },
  on_attach = my_on_attach,
})

-- Global keymap
vim.keymap.set("n", "<F3>", "<cmd>NvimTreeToggle<cr>", {
  noremap = true,
  silent = true,
})
