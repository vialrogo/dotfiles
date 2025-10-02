return {
    "nvim-tree/nvim-tree.lua",  -- tree files view
    version = "*",
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons",},
    config = function()

        local function my_on_attach(bufnr)
            local api = require "nvim-tree.api"

            local function opts(desc)
                return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
            end

            -- default mappings
            api.config.mappings.default_on_attach(bufnr)

            -- custom mappings
            vim.keymap.set('n', '<C-[>', api.tree.change_root_to_parent,        opts('Up'))
            vim.keymap.set('n', '?',     api.tree.toggle_help,                  opts('Help'))
        end

        require("nvim-tree").setup({
            filters = { dotfiles = true },
            on_attach = my_on_attach,
        })

        -- Keymaps
        vim.keymap.set('n', '<F3>', ':NvimTreeToggle<CR>', {noremap = true, silent = true})
    end,
}
