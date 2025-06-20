return {
    'lervag/wiki.vim', -- Wiki for notes.
    lazy = false,
    config = function()
        vim.g.wiki_root = '/home/vialrogo/Wiki'
        vim.g.wiki_filetypes = {'wiki'}

        -- Load wiki on wiki filetype
        vim.api.nvim_create_autocmd('Filetype', { pattern = 'wiki', command = [[WikiEnable]] })
        vim.api.nvim_create_autocmd('Filetype', { pattern = 'wiki', command = [[ListsEnable]] })
        vim.api.nvim_create_autocmd('Filetype', { pattern = 'wiki', command = [[setlocal wrap]] })
    end,
}
