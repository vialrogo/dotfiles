return {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
    lazy = false,
    config = function()
        require('render-markdown').setup({
            file_types = { 'markdown', 'wiki', 'vimwiki'},
            render_modes = true,
        })
    end,
    opts = {},
}
