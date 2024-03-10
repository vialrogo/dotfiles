return {
    'lervag/wiki.vim', -- Wiki for notes.
    config = function()
        vim.g.wiki_root = '~/Wiki'
        vim.g.wiki_filetypes = {'wiki'}
    end,
}
