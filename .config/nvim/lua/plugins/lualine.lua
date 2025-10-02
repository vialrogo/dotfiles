return {
  'nvim-lualine/lualine.nvim', -- Status line substitute
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()

    -- Function to toggle the spelllang string for the lualine. 
    -- Returns the spell language used if spell is set true, or a empty string if spell is set false.
    local function spelllangtgl()
        return (vim.o.spell and '%{&spelllang}' or '')
    end

    require('lualine').setup {
      options = {
        icons_enabled = true,
        theme = 'auto',
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
        -- component_separators = { left = '', right = ''},
        -- section_separators = { left = '', right = ''},
        disabled_filetypes = {
          statusline = {},
          winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        always_show_tabline = true,
        globalstatus = false,
        refresh = {
          statusline = 1000,
          tabline = 1000,
          winbar = 1000,
          refresh_time = 16, -- ~60fps
          events = {
            'WinEnter',
            'BufEnter',
            'BufWritePost',
            'SessionLoadPost',
            'FileChangedShellPost',
            'VimResized',
            'Filetype',
            'CursorMoved',
            'CursorMovedI',
            'ModeChanged',
          },
        }
      },
      sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {'filename'},
        lualine_x = {spelllangtgl, 'searchcount', 'encoding', 'fileformat', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
      },
      tabline = {
        lualine_a = {},
        lualine_b = {{'buffers', 
                      icons_enabled = true, 
                      use_mode_colors = true,
                      show_modified_status = true, -- Shows indicator when the buffer is modified.
                      symbols = {
                        modified = ' ●',      -- Text to show when the buffer is modified
                        alternate_file = '', -- Text to show to identify the alternate file
                        directory =  '',     -- Text to show when the buffer is a directory
                      },
                    }},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {}
      },
      winbar = {},
      inactive_winbar = {},
      extensions = {}
    }
  end,
}
