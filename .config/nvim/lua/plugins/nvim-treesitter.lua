return {
    {
        "nvim-treesitter/nvim-treesitter", -- Code highlighting
        event = { "BufReadPre", "BufNewFile" },
        build = ":TSUpdate",
        dependencies = {
            "nvim-treesitter/nvim-treesitter-textobjects",
            "windwp/nvim-ts-autotag",
        },
        config = function()

            require("nvim-treesitter.configs").setup({

                -- enable syntax highlighting
                highlight = { enable = true },

                -- enable indentation
                indent = { enable = true },

                -- enable autotagging (w/ nvim-ts-autotag plugin)
                autotag = { enable = true },

                incremental_selection = {
                    enable = true,
                    keymaps = {
                        init_selection = "<C-space>",
                        node_incremental = "<C-space>",
                        scope_incremental = false,
                        node_decremental = "<bs>",
                    },
                },

                -- Force use markdown rules for wiki files for no error message
                vim.treesitter.language.register("markdown", "wiki"),
            })
        end,
    },
}
