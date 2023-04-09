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
    'rafi/awesome-vim-colorschemes',                    		-- Collection of awesome color schemes for Vim, merged for quick use.
    'nvim-lualine/lualine.nvim',                    			-- Status line substitute
    'kyazdani42/nvim-web-devicons',					            -- If you want to have icons in your statusline choose one of these
    'vim-airline/vim-airline-themes',               			-- Themes for vim-airline
    {'nvim-treesitter/nvim-treesitter', build = ":TSUpdate"},   -- Code highlighting  
    'dense-analysis/ale',                           			-- The BIG syntax wrapper. Substitute of syntastic
    'elzr/vim-json',                                			-- Json better suport 
    'embear/vim-localvimrc',                        			-- For local .lvimrc files
    {'Shougo/deoplete.nvim', build = ':UpdateRemotePlugins'},   -- Completion framework. Requires pip install msgpack-python pynvim
    'sirver/ultisnips',                     				    -- Snippets manager
    'honza/vim-snippets',                   				    -- Snippets
    'tpope/vim-commentary',                 				    --  Comment stuff out.
    'tpope/vim-repeat',                     				    -- Repeat.vim remaps . in a way that plugins can tap into it.
    'lervag/vimtex',
    'KeitaNakamura/tex-conceal.vim',		    			    -- A vim plugin extends the Conceal feature for LaTeX.
    {'nvim-telescope/telescope.nvim', tag = '0.1.1', dependencies = { 'nvim-lua/plenary.nvim' } },
    'ixru/nvim-markdown',
    'dhruvasagar/vim-table-mode',                       		-- Tables on markdown
    'dag/vim-fish',                                     		-- Fish script support
    'jiangmiao/auto-pairs',                             		-- Automatic pairs
    'OmniSharp/omnisharp-vim',                          		-- C# extension
    'lambdalisue/suda.vim',                             		-- Edit like sudo plugin
    'safv12/andromeda.vim',                             		-- Andromeda theme
    'rebelot/kanagawa.nvim',                            		-- Kanagawa theme
    {'iamcco/markdown-preview.nvim',
        ft = "markdown",
        build = ":call mkdp#util#install()",                    -- build = "cd app && yarn install",
    },
    {'neoclide/coc.nvim', branch = 'release'},                  -- coc for vscode completation style
})

-- vim-airline-theme
vim.g.airline_theme='term'

-- ale
vim.g.ale_completion_enabled = 1

-- vim-localvimrc
vim.g.localvimrc_ask = 0                            	-- Doesn't ask before load .lvimrc file

-- deoplete.nvim
vim.cmd "let g:deoplete#enable_at_startup = 1"

-- nvim-markdown
vim.g.tex_conceal = ""
vim.g.vim_markdown_math = 1
vim.g.vim_markdown_frontmatter = 1
vim.g.vim_markdown_toml_frontmatter = 1
vim.g.vim_markdown_json_frontmatter = 1

-- vim-ultisnips
vim.g.UltiSnipsExpandTrigger="<tab>"        		    -- Trigger configuration for expand
vim.g.UltiSnipsListSnippets="<c-tab>"
vim.g.UltiSnipsJumpForwardTrigger="<c-j>"   		    -- Next trigger
vim.g.UltiSnipsJumpBackwardTrigger="<c-k>"  		    -- Previous trigger
vim.g.UltiSnipsEditSplit="vertical"         		    -- If you want :UltiSnipsEdit to split your window.
    
-- vimtex
vim.g.tex_flavor = "latex"                  	        -- Define latex by default for any *.tex file

-- tex-conceal
vim.g.tex_conceal = "abdmgs"                            -- Set to: a->accents/ligatures, b->bold/italic, c->delimiters, m->math, g->greek, s -> super/subscripts. Default is admgs
vim.g.tex_superscripts= "[0-9a-zA-W.,:;+-<>/()=]"       -- To avoid having inscrutable utf-8 glyphs appear,
vim.g.tex_subscripts= "[0-9aehijklmnoprstuvx,+-/().]"   -- To avoid having inscrutable utf-8 glyphs appear,

-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- coc
-- On new systems run:
-- :CocInstall coc-tsserver coc-json coc-html coc-css coc-vimtex coc-texlab coc-json coc-git coc-clangd coc-cmake coc-docker coc-markdownlint coc-omnisharp coc-sql 
-- To update all extensions use :CocUpdate , for list extensions :CocList extensions

-- ------------------------------ Requires -----------------------------------
require('lualine_setup')
require('sets')

-- ------------------------------ SETs ---------------------------------------
local options = {noremap = true, silent = true}
vim.keymap.set('i', 'jk', '<Esc>', options)

-- Fast quit
vim.keymap.set('n', '<Leader>w', ':w<CR>', options)
vim.keymap.set('n', '<Leader>x', ':x<CR>', options)
vim.keymap.set('n', '<Leader>q', ':q<CR>', options)

-- Search toggle
vim.keymap.set('n', '<Leader>/', ':set hlsearch!<CR>', options)

-- Fold
vim.keymap.set('n', '<F8>', 'zM', options)
vim.keymap.set('n', '<F10>', 'zR', options)

--Buffer stuff. Buffer == Ctrl
vim.keymap.set('n', '<C-h>', ':bp<CR>', options)
vim.keymap.set('n', '<C-l>', ':bn<CR>', options)
vim.keymap.set('n', '<Leader>bd', ':bp <BAR> bd #<CR>', options)

-- Global copy and paste
vim.keymap.set({'n', 'v'}, '<C-y>', '"+y', options)
vim.keymap.set({'n', 'v'}, '<C-p>', '"+gp', options)
vim.keymap.set('i', '<C-p>', '<C-r><C-p>+', options)

-- > and < 
vim.keymap.set('v', '<', '<gv', options)
vim.keymap.set('v', '>', '>gv', options)

-- Toggle spell
vim.keymap.set({'n','v','i'}, '<F7>', ':setlocal spell! <CR>', options)


-- ------------------------------ CMDs ---------------------------------------
vim.cmd "autocmd BufRead * normal zR"
vim.cmd "autocmd BufEnter * silent! lcd %:p:h"


-- ----------------------- Look and feel options -----------------------------
vim.cmd "colorscheme kanagawa"

vim.cmd [[
if exists("g:neovide")
    " neovide-specific configuration goes here
    set guifont=Cascadia\ Code\ SemiLight:h13
    let g:neovide_hide_mouse_when_typing = v:false
endif
]]

-- Link the Conceal highlight configuration to the Normal configuration.
vim.cmd "highlight! link Conceal Normal" 
