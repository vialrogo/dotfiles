vim.g.mapleader = " "

-- ------------------------------ Lazy ---------------------------------------
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    'nvim-lualine/lualine.nvim',                    			-- Status line substitute
    {'nvim-treesitter/nvim-treesitter',                         -- Code highlighting  
        build = ":TSUpdate"
    },
    {'nvim-telescope/telescope.nvim',                           -- File explorer and more
        tag = '0.1.3', 
        dependencies = {'nvim-lua/plenary.nvim', 
                        'BurntSushi/ripgrep',
                        'sharkdp/fd',
                        'nvim-tree/nvim-web-devicons'},
        keys = {
            { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
            { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
            { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live grep" },
            { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help tags" },
            { "<leader>fd", "<cmd>Telescope find_files cwd=C:/Users/vialr/Insync/vialrogo/Wiki<cr>", desc = "Find Files in Wiki" },
        },
    },
    {'neoclide/coc.nvim',                                       -- coc for vscode completation style 
        -- :CocInstall coc-snippets coc-tsserver coc-json coc-html coc-css coc-vimtex coc-texlab coc-json coc-git coc-clangd coc-cmake coc-docker 
        -- :CocInstall coc-omnisharp coc-sql 
        -- To update all extensions use :CocUpdate , for list extensions :CocList extensions
        branch = 'release',
    },
    {'kylechui/nvim-surround',
        version = "*", -- Use for stability; omit to use `main` branch for the latest features
        event = "VeryLazy",
        config = function()
            require("nvim-surround").setup({  })
        end
    },
    'embear/vim-localvimrc',                                    -- For local .lvimrc files.
    'tpope/vim-commentary',                                     -- Comment stuff out.
    'tpope/vim-repeat',                                         -- Repeat.vim remaps . in a way that plugins can tap into it.
    'jiangmiao/auto-pairs',                                     -- Automatic pairs.
    'lambdalisue/suda.vim',                                     -- Edit like sudo plugin.
    'lervag/vimtex',                                            -- Greate latex support for vim.
    'KeitaNakamura/tex-conceal.vim',                            -- A vim plugin extends the Conceal feature for LaTeX.
    'dhruvasagar/vim-table-mode',                               -- Tables on markdown.
    'rafi/awesome-vim-colorschemes',                            -- Collection of awesome color schemes for Vim, merged for quick use.
    'rebelot/kanagawa.nvim',                                    -- Kanagawa theme.
    {'lukas-reineke/indent-blankline.nvim',                     -- Identation lines.
        main = 'ibl',
        opts = {}
    },
    'lervag/wiki.vim',                                          -- Wiki for notes.
    'lervag/wiki-ft.vim',                                       -- .wiki files suport.
    'lervag/lists.vim',                                         -- list suport for md/wiki files.
    'dkarter/bullets.vim',                                      -- Better bullets and list in markdown files.
    'folke/paint.nvim',                                         -- Add filter options. I used it to change header level color on markdownsa.
})

-- ------------------------------ Requires -----------------------------------
require('lualine_setup')
require('coc_setup')
require('paint_setup')
require('sets')
require('keymaps')

-- vim-localvimrc
vim.g.localvimrc_ask = 0                                        -- Doesn't ask before load .lvimrc file

-- vimtex
vim.g.tex_flavor = "latex"                  	                -- Define latex by default for any *.tex file

-- tex-conceal
vim.g.tex_conceal = "abdmgs"                                    -- Set to: a->accents/ligatures, b->bold/italic, c->delimiters, m->math, g->greek, s -> super/subscripts.
vim.g.tex_superscripts= "[0-9a-zA-W.,:;+-<>/()=]"               -- To avoid having inscrutable utf-8 glyphs appear,
vim.g.tex_subscripts= "[0-9aehijklmnoprstuvx,+-/().]"           -- To avoid having inscrutable utf-8 glyphs appear,

-- indent-blankline
vim.opt.list = true

-- wiki.vim
vim.g.wiki_root = 'C:/Users/vialr/Insync/vialrogo/Wiki'
vim.g.wiki_filetypes = {'wiki'}


-- lists.vim
vim.g.lists_filetypes = {'wiki'}
vim.keymap.set('n', '<C-s>', ':ListsToggle<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<C-c>', ':ListsToggleCheckbox<CR>', {noremap = true, silent = true})

-- bullets.vim
vim.g.bullets_enabled_file_types = "['markdown','wiki','text','gitcommit']"
vim.g.bullets_pad_right = 0

-- ----------------------- Look and feel options -----------------------------
vim.cmd.colorscheme('kanagawa')
-- vim.opt.guifont = { '*' }
vim.g.neovide_hide_mouse_when_typing = false

-- ------------------------------ Others ---------------------------------------
vim.api.nvim_create_autocmd("BufRead", { pattern = "*", command = [[normal zR]] })                  -- Set de fold to all open.
vim.api.nvim_create_autocmd("BufEnter", { pattern = "*", command = [[silent! lcd %:p:h]] })         -- Set the pwd to the open buffer.

vim.api.nvim_create_autocmd('Filetype', { pattern = 'wiki', command = [[WikiEnable]] })
vim.api.nvim_create_autocmd('Filetype', { pattern = 'wiki', command = [[ListsEnable]] })
vim.api.nvim_create_autocmd('Filetype', { pattern = 'wiki', command = [[setlocal wrap]] })

vim.api.nvim_set_hl(0, 'Conceal', { link = 'Normal' })                                              -- Link the Conceal highlight configuration to the Normal configuration.
