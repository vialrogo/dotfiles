-- Add plugins
vim.pack.add({
  'https://github.com/nvim-lua/plenary.nvim',
  'https://github.com/nvim-telescope/telescope.nvim',
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

-- Default funcionality
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find Files" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Buffers" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live grep" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Help tags" })

-- Wiki
vim.keymap.set("n", "<leader>fd", function()
  builtin.find_files({ cwd = "/home/vialrogo/Wiki" })
end, { desc = "Find Files in Wiki" })

-- cmdline plugin
vim.keymap.set("n", "<leader><leader>", function()
  require("telescope").extensions.cmdline.cmdline({})
end, { desc = "Cmdline" })

-- Neoclip plugin
vim.keymap.set("n", "<leader>fp", function()
  require("telescope").extensions.neoclip.neoclip()
end, { desc = "Neoclip" })

-- LSP keymaps (applied when LSP attaches), triggering telescope
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(event)
    local bufmap = function(mode, lhs, rhs, desc)
      vim.keymap.set(mode, lhs, rhs, { buffer = event.buf, desc = desc })
    end

    -- Navigation (Telescope-powered)
    bufmap("n", "gr", builtin.lsp_references, "LSP References")
    bufmap("n", "gi", builtin.lsp_implementations, "LSP Implementations")
    bufmap("n", "gt", builtin.lsp_type_definitions, "LSP Type Definitions")

    -- Buffer diagnostics in telescope
    bufmap("n", "<leader>D", function()
      builtin.diagnostics({ bufnr = 0 })
    end, "Buffer Diagnostics")
  end,
})
