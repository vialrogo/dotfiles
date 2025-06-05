return {
    'dkarter/bullets.vim', -- Better bullets and list in markdown files.
    lazy = false,
    config = function()
        vim.g.bullets_enabled_file_types = "['markdown','wiki','text','gitcommit']"
        vim.g.bullets_pad_right = 0
    end,
}
