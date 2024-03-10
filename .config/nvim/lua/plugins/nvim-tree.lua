return {
    "nvim-tree/nvim-tree.lua",  -- tree files view
    version = "*",
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons",},
    config = function()
        require("nvim-tree").setup({
            filters = { dotfiles = true }
        })
    end,
}
