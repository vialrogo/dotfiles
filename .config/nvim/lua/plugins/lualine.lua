return {
    'nvim-lualine/lualine.nvim', -- Status line substitute
    config = function()

        -- Function to toggle the spelllang string for the lualine. Returns the spell language used if spell is set true, or a empty string if spell is set false.
        local function spelllangtgl()
            return (vim.o.spell and '%{&spelllang}' or '')
        end

        require('lualine').setup {
            options = {
                icons_enabled = true,
                theme = 'auto',
                section_separators = { left = '', right = '' },
                component_separators = { left = '', right = '' },
                disabled_filetypes = {
                    statusline = {},
                    winbar = {},
                },
                ignore_focus = {},
                always_divide_middle = true,
                globalstatus = false,
                refresh = {
                    statusline = 1000,
                    tabline = 1000,
                    winbar = 1000,
                }
            },
            sections = {
                lualine_a = {'mode'},
                lualine_b = {'filename'},
                lualine_c = {'branch', 'diff', 'diagnostics'},
                lualine_x = {{spelllangtgl, color = { fg = '#ffaa88'} }, 'searchcount', 'encoding'},
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
                lualine_b = {{  'buffers', 
                                icons_enabled = true, 
                                use_mode_colors = true,
                                show_modified_status = true, -- Shows indicator when the buffer is modified.
                                buffers_color = {
                                    active = { fg = '#ff913c'},     -- Color for active buffer.
                                    inactive = { fg = '#713a0f'}, -- Color for inactive buffer.
                                },
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
            winbar = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = {},
                lualine_x = {},
                lualine_y = {},
                lualine_z = {}
                },
            inactive_winbar = {},
            extensions = {}
        }


    end,
}
