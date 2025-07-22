return {
    'MeanderingProgrammer/render-markdown.nvim',
    name = 'render-markdown', -- Only needed if you have another plugin named markdown.nvim
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
    lazy = false,
    config = function()
        require('render-markdown').setup({
            file_types = { 'markdown', 'wiki'},
            render_modes = true,
            completions = { lsp = { enabled = true } },
            heading = {
              backgrounds = {
                'RenderMarkdownH4Bg',
                'RenderMarkdownH2Bg',
                'RenderMarkdownH3Bg',
                'RenderMarkdownH1Bg',
                'RenderMarkdownH5Bg',
                'RenderMarkdownH6Bg',
              },
              foregrounds = {
                'RenderMarkdownH4',
                'RenderMarkdownH2',
                'RenderMarkdownH3',
                'RenderMarkdownH1',
                'RenderMarkdownH5',
                'RenderMarkdownH6',
              },
            },
        })
    end,
    opts = {},
}
