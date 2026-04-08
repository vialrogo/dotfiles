-- Add plugins
vim.pack.add({
  'https://github.com/nvim-lua/plenary.nvim',
  'https://github.com/nvim-telescope/telescope.nvim',
  'https://github.com/nvim-treesitter/nvim-treesitter',
  'https://github.com/jonarrien/telescope-cmdline.nvim',
  'https://github.com/nvim-tree/nvim-web-devicons',
})

-- Setup
require("telescope").setup({
  defaults = {
    path_display = { "truncate" },
    mappings = {
      i = {
        ["<C-k>"] = require("telescope.actions").move_selection_previous,
        ["<C-j>"] = require("telescope.actions").move_selection_next,
      },
      n = {
        ["<C-k>"] = require("telescope.actions").move_selection_previous,
        ["<C-j>"] = require("telescope.actions").move_selection_next,
      },
    },
  },
})

-- Keymap configuration
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find Files" })
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Buffers" })
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Live grep" })
vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { desc = "Help tags" })
vim.keymap.set("n", "<leader>fd", "<cmd>Telescope find_files cwd=/home/vialrogo/Wiki<cr>", { desc = "Find Files in Wiki" })
vim.keymap.set("n", "<leader>fp", "<cmd>Telescope neoclip<cr>", { desc = "Neoclip" })
vim.keymap.set("n", "<leader><leader>", "<cmd>Telescope cmdline<cr>", { desc = "Cmdline" })
