" Remap mapleader
let mapleader = "\<Space>"

call plug#begin()

    " -------------------------------------------------------------------------------
    Plug 'rafi/awesome-vim-colorschemes'                " Collection of awesome color schemes for Vim, merged for quick use.

    set termguicolors                                   " Enables 24-bit RGB color in the TUI.


    " -------------------------------------------------------------------------------
    Plug 'nvim-lualine/lualine.nvim'                    " Status line substitute
    " If you want to have icons in your statusline choose one of these
    Plug 'kyazdani42/nvim-web-devicons'

    " -------------------------------------------------------------------------------
    Plug 'vim-airline/vim-airline-themes'               " Themes for vim-airline

    let g:airline_theme='term'                          " Set airline theme. Screenshots in https://github.com/vim-airline/vim-airline/wiki/Screenshots

    
    " -------------------------------------------------------------------------------
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}     " Interface for tree-sitter in Neovim and to provide some basic functionality such as highlighting based on it. 
                                                                    " Install languages with :TSInstall <language_to_install>

    " -------------------------------------------------------------------------------
    Plug 'dense-analysis/ale'                           " The BIG syntax wrapper. Substitute of syntastic

    let g:ale_completion_enabled = 1

    " -------------------------------------------------------------------------------
    Plug 'godlygeek/tabular'                            " Allow tables on markdown plugin


    " -------------------------------------------------------------------------------
    Plug 'vim-pandoc/vim-pandoc-syntax'

    augroup pandoc_syntax
        au! BufNewFile,BufFilePre,BufRead *.md set filetype=markdown.pandoc
    augroup END


    " -------------------------------------------------------------------------------
    Plug 'elzr/vim-json'                                " Json better suport 


    " -------------------------------------------------------------------------------
    Plug 'embear/vim-localvimrc'                        " For local .lvimrc files

    let g:localvimrc_ask = 0                            " Doesn't ask before load .lvimrc file
    

    " -------------------------------------------------------------------------------
    Plug 'plasticboy/vim-markdown'

    let g:vim_markdown_folding_disabled = 1             " disable header folding
    let g:vim_markdown_conceal = 2

    " support front matter of various format
    let g:vim_markdown_frontmatter = 1  " for YAML format
    let g:vim_markdown_toml_frontmatter = 1  " for TOML format
    let g:vim_markdown_json_frontmatter = 1  " for JSON format


    " -------------------------------------------------------------------------------
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

    let g:mkdp_auto_close = 0
    let g:mkdp_browser = 'microsoft-edge-dev'
    let g:mkdp_command_for_global = 1
        

    " -------------------------------------------------------------------------------
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }       " Completion framework
                                                                        " Requires pip install msgpack-python pynvim
    let g:deoplete#enable_at_startup = 1                                " Enable deoplete completion at startup
    " Use Tab for next entry on dialog
    inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"            
    " Use S-Tab for previous entry on dialog
    inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"


    " -------------------------------------------------------------------------------
    Plug 'sirver/ultisnips'                     " Snippets manager
    
    let g:UltiSnipsExpandTrigger="<tab>"        " Trigger configuration for expand
    let g:UltiSnipsListSnippets="<c-tab>"
    let g:UltiSnipsJumpForwardTrigger="<c-j>"   " Next trigger
    let g:UltiSnipsJumpBackwardTrigger="<c-k>"  " Previous trigger
    let g:UltiSnipsEditSplit="vertical"         " If you want :UltiSnipsEdit to split your window.


    " -------------------------------------------------------------------------------
    Plug 'honza/vim-snippets'                   " Snippets


    " -------------------------------------------------------------------------------
    Plug 'tpope/vim-commentary'                 " Comment stuff out.

    autocmd FileType matlab setlocal commentstring=%\ %s                                                " File type definition for Matlab language
    autocmd BufNewFile,BufReadPost,BufRead *.R,*.Rnw,*.Rd,*.Rmd,*.Rrst setlocal commentstring=#\ %s     " File type definition for R language
    autocmd FileType c,cpp,java setlocal commentstring=//\ %s                                           " Change default /* for // for comments in java, c and cpp
    

    " -------------------------------------------------------------------------------
    Plug 'tpope/vim-repeat'                     " Repeat.vim remaps . in a way that plugins can tap into it.


    " -------------------------------------------------------------------------------
    Plug 'lervag/vimtex'

    let g:tex_flavor = "latex"                  " Define latex by default for any *.tex file


    " -------------------------------------------------------------------------------
    Plug 'KeitaNakamura/tex-conceal.vim', {'for': 'tex'}    " A vim plugin extends the Conceal feature for LaTeX.

    let g:tex_conceal = "abdmgs"                            " Set the conceal mode to: a-> accents/ligatures, b -> bold/italic, c -> delimiters, m -> math, g -> greek, s -> superscripts/subscripts. The default is admgs
    let g:tex_superscripts= "[0-9a-zA-W.,:;+-<>/()=]"       " To avoid having inscrutable utf-8 glyphs appear,
    let g:tex_subscripts= "[0-9aehijklmnoprstuvx,+-/().]"   " To avoid having inscrutable utf-8 glyphs appear,


    " -------------------------------------------------------------------------------
    Plug 'kkoomen/vim-doge', { 'do': { -> doge#install() } }    " DoGe is a (Do)cumentation (Ge)nerator which will generate a proper documentation skeleton

    " -------------------------------------------------------------------------------
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'                     " Search plugin

    nnoremap <leader>ff :Telescope find_files<CR>
    nnoremap <leader>fb <cmd>Telescope buffers<cr>


    " -------------------------------------------------------------------------------
    Plug 'dhruvasagar/vim-table-mode'                       " Tables on markdown


    " -------------------------------------------------------------------------------
    Plug 'dag/vim-fish'                                     " Fish script support


    " -------------------------------------------------------------------------------
    Plug 'jiangmiao/auto-pairs'                             " Automatic pairs


    " -------------------------------------------------------------------------------
    Plug 'OmniSharp/omnisharp-vim'                          " C# extension


    " -------------------------------------------------------------------------------
    Plug 'lambdalisue/suda.vim'                             " Edit like sudo plugin


    " -------------------------------------------------------------------------------
    Plug 'safv12/andromeda.vim'                             " Andromeda theme
    

    " -------------------------------------------------------------------------------
    Plug 'rebelot/kanagawa.nvim'                            " Kanagawa theme
    

    let g:suda_smart_edit = 1


call plug#end()

" ------------------------------- Syntax and files -----------------------------

" Force all *.md files to be markdown
" autocmd BufNewFile,BufReadPost,BufRead *.markdown,*.mdown,*.mkd,*.mkdn,*.md set filetype=markdown

" Folding for syntax languages
autocmd Syntax c,cpp,vim,xml,html,xhtml,perl,python setlocal foldmethod=syntax

" Fold starup status
autocmd BufRead * normal zR

" ------------------------------------ Basic -----------------------------------

" Set pwd to current directory on starup
autocmd BufEnter * silent! lcd %:p:h

" Set W to sudo save and silent reload the file
command W :execute ':silent w !sudo tee % > /dev/null' | :edit!

" ------------------------- Look and feel options ------------------------------
"Others very nice themes: deus abstract afterglow ayu apprentice
colorscheme kanagawa

if exists("g:neovide")
    " neovide-specific configuration goes here
    set guifont=Cascadia\ Code\ SemiLight:h13
    let g:neovide_hide_mouse_when_typing = v:false
endif

" Link the Conceal highlight configuration to the Normal configuration.
highlight! link Conceal Normal 

"=============================== LUA ==========================================
lua <<EOF
require('lualine_setup')
require('sets')

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

