return {
    'lervag/lists.vim', -- list suport for md/wiki files.
    lazy = false,
    config = function()
        vim.g.lists_filetypes = {'wiki'}
        vim.keymap.set('n', '<C-s>', ':ListsToggle<CR>', {noremap = true, silent = true})
        vim.keymap.set('n', '<C-c>', ':ListsToggleCheckbox<CR>', {noremap = true, silent = true})
    end,
}
