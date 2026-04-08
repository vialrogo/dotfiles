-- Add plugins
vim.pack.add({
  'https://github.com/MeanderingProgrammer/render-markdown.nvim',
  { src = "https://github.com/nvim-treesitter/nvim-treesitter", version = 'main' },
  'https://github.com/nvim-tree/nvim-web-devicons',
})

-- Setup plugin
require("render-markdown").setup({
  file_types = { "markdown", "wiki" },
  render_modes = true,
  completions = { lsp = { enabled = true } },
  heading = {
    backgrounds = {
      "RenderMarkdownH4Bg",
      "RenderMarkdownH2Bg",
      "RenderMarkdownH3Bg",
      "RenderMarkdownH1Bg",
      "RenderMarkdownH5Bg",
      "RenderMarkdownH6Bg",
    },
    foregrounds = {
      "RenderMarkdownH4",
      "RenderMarkdownH2",
      "RenderMarkdownH3",
      "RenderMarkdownH1",
      "RenderMarkdownH5",
      "RenderMarkdownH6",
    },
  },
})
