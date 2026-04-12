-- Add plugins
vim.pack.add({
  'https://github.com/nvim-lua/plenary.nvim',
  'https://github.com/nvim-telescope/telescope.nvim',
  { src = "https://github.com/nvim-treesitter/nvim-treesitter", version = 'main' },
  'https://github.com/nvim-tree/nvim-web-devicons',
  'https://github.com/jonarrien/telescope-cmdline.nvim',
  'https://github.com/AckslD/nvim-neoclip.lua',
})

-- Setup
local actions = require("telescope.actions")

require("telescope").setup({
  defaults = {
    mappings = {
      i = {
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-j>"] = actions.move_selection_next,
      },
      n = {
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-j>"] = actions.move_selection_next,
      },
    },
  },
})

require("neoclip").setup()


-- Keymap configuration
local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find Files" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Buffers" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live grep" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Help tags" })

vim.keymap.set("n", "<leader>fd", function()
  builtin.find_files({ cwd = "/home/vialrogo/Wiki" })
end, { desc = "Find Files in Wiki" })

vim.keymap.set("n", "<leader><leader>", function()
  require("telescope").extensions.cmdline.cmdline()
end, { desc = "Cmdline" })

vim.keymap.set("n", "<leader>fp", function()
  require("telescope").extensions.neoclip.neoclip()
end, { desc = "Neoclip" })
