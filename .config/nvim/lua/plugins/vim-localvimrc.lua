return {
    'embear/vim-localvimrc', -- For local .lvimrc files.
    lazy = false,
    config = function()
        vim.g.localvimrc_ask = 0 -- Doesn't ask before load .lvimrc file
    end,
}
