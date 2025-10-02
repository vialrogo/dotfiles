return{
  'nvim-mini/mini.nvim',
  version = false,
  config = function()

    require('mini.surround').setup({})
    require('mini.pairs').setup({})
    require('mini.icons').setup({})
    require('mini.cursorword').setup({})

    local gen_loader = require('mini.snippets').gen_loader
    require('mini.snippets').setup({
      snippets = {
        -- Load custom file with global snippets first (adjust for Windows)
        gen_loader.from_file('~/.config/nvim/snippets/global.json'),

        -- Load snippets based on current language by reading files from
        -- "snippets/" subdirectories from 'runtimepath' directories.
        gen_loader.from_lang(),
      },
    })

  end,
}
