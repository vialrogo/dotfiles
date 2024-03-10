return {
    'nvim-telescope/telescope.nvim', -- File explorer and more
    tag = '0.1.3',
    dependencies = {'nvim-lua/plenary.nvim',
                    'BurntSushi/ripgrep',
                    'sharkdp/fd',
                    'nvim-tree/nvim-web-devicons'},
    keys = {
        { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
        { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
        { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live grep" },
        { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help tags" },
        { "<leader>fd", "<cmd>Telescope find_files cwd=~/Wiki<cr>", desc = "Find Files in Wiki" },
    },
}
