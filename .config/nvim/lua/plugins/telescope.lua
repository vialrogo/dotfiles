return {
    'nvim-telescope/telescope.nvim',
    branch = 'master',
    dependencies = {'nvim-lua/plenary.nvim',
                    'BurntSushi/ripgrep',
                    'sharkdp/fd',
                    'nvim-treesitter/nvim-treesitter',
                    'jonarrien/telescope-cmdline.nvim',
                    'nvim-tree/nvim-web-devicons'},
    keys = {
            { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
            { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
            { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live grep" },
            { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help tags" },
            { "<leader>fd", "<cmd>Telescope find_files cwd=C:/Users/vialr/Insync/vialrogo/Wiki<cr>", desc = "Find Files in Wiki" },
            { "<leader>fp", "<cmd>Telescope neoclip<cr>", desc = "Neoclip" },
            { '<leader><leader>', '<cmd>Telescope cmdline<cr>', desc = 'Cmdline' },
        
    },
    config = function()
        require("telescope").setup({
            defaults = {
                path_display = { "truncate " },
                mappings = {
                    i = {
                        ["<C-k>"] = require("telescope.actions").move_selection_previous, -- move to prev result
                        ["<C-j>"] = require("telescope.actions").move_selection_next, -- move to next result
                    },
                },
            },
        })
    end,
}
