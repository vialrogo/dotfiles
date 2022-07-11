" Remap mapleader
let mapleader = "\<Space>"

call plug#begin()

    " -------------------------------------------------------------------------------
    Plug 'rafi/awesome-vim-colorschemes'                " Collection of awesome color schemes for Vim, merged for quick use.

    set termguicolors                                   " Enables 24-bit RGB color in the TUI.


    " -------------------------------------------------------------------------------
    Plug 'vim-airline/vim-airline'                      " Status line substitute

    let g:airline_powerline_fonts = 1                   " airline fonts. For the correct fonts and <> symbols, see the documentation. Is necessary add a font to the local files
    let g:airline#extensions#tabline#enabled = 1        " Enable the list of buffers AKA airtab


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

    let g:suda_smart_edit = 1


call plug#end()

" ------------------------------------- Sets  ----------------------------------
set tabstop=4                   " Number of spaces that a <Tab> in the file counts for. 
set shiftwidth=4                " Number of spaces to use for each step of (auto)indent.
set shiftround                  " use multiple of shiftwidth when indenting with '<' and '>'
set expandtab                   " Use the appropriate number of spaces to insert a <Tab>. Spaces are used in indents with the '>' and '<' commands and when 'autoindent' is on. To insert a real tab when 'expandtab' is on, use CTRL-V <Tab>.
set number                      " Show line numbers.
set showmatch                   " When a bracket is inserted, briefly jump to the matching one. The jump is only done if the match can be seen on  screen. The time to show the match can be set with 'matchtime'.
set ignorecase                  " Ignore case in search patterns.
set smartcase                   " Override the 'ignorecase' option if the search pattern contains upper case characters.
set copyindent                  " Copy the previous indentation on autoindenting"
set wrapmargin=0                " Number of characters for the wrap count.
set wrap                        " This enables 'visual' wrapping
set lbr                         " Wrapping only in complete words
set textwidth=0                 " This turns off physical line wrapping (ie: automatic insertion of newlines)
set mouse=a                     " Enable the use of the mouse.
set undolevels=1000             " use many levels of undo
set title                       " change the terminal's title
set nobackup                    " Oh, and man… never ever let Vim write a backup file! They did that in the 70’s. 
set noswapfile                  " Use modern ways for tracking your changes, for God’s sake.
set pastetoggle=<F2>            " Then, when in insert mode, ready to paste, press <F2>, Vim will switch to paste mode, disabling all kinds of smartness
set fileencoding=utf-8
set fileencodings=utf-8,latin1,latin2
set spelllang=pt                " Set the spell language
set cursorline                  " Set the current cursorline highlight
set conceallevel=2              " Set de conceal (dynamic replace of _X or \alpha characters).
set concealcursor=c             " Set the conseal cursor for full text display in normal and command mode. Other modes: n-> normal, c-> command, v-> visual, i-> insert
set whichwrap+=<,>,h,l,[,]      " This causes the left and right arrow keys, as well as h and l, to wrap when used at beginning or end of lines. ( < > are the cursor keys used in normal and visual mode, and [ ] are the cursor keys in insert mode).)
set scrolloff=2                 " The number of lines before and after of the cursor position. If is a big number, the cursor is always in the center of the screen.
set colorcolumn=0               " highlight column after 'textwidth'
set nojoinspaces                " Remove de second spaces with join (J) after '.', '?' and '!'
set hidden                      " Open new buffer without saving to a currently modified file

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

" It clears the search buffer when you press <leader>/
nnoremap <silent> <Leader>/ :set hlsearch!<CR> 

" Mappings to toggle foldsEdit
nnoremap <F8> zM
nnoremap <F10> zR

" Set W to sudo save and silent reload the file
command W :execute ':silent w !sudo tee % > /dev/null' | :edit!

" Easy and fast scape shortcut
inoremap jk <ESC>

" Buffer stuff. Buffer == Ctrl
nnoremap <C-h>  :bp<CR>
nnoremap <C-l> :bn<CR>
" Close the current buffer but not the window. Put inside the window the next buffer
nnoremap <silent> <Leader>bd :bp <BAR> bd #<CR>

" cut, copy, paste from standard system buffer in visual mode and paste in insertion
vnoremap <C-y> "+y
nnoremap <C-y> "+y
vnoremap <C-p> "+gp
nnoremap <C-p> "+gp
inoremap <C-p> <C-r><C-p>+

"" Vmap for maintain Visual Mode after shifting > and <
vmap < <gv
vmap > >gv

" Leader key maps
nnoremap <silent> <Leader>w :w<CR> 
nnoremap <silent> <Leader>x :x<CR>
nnoremap <silent> <Leader>q :q<CR>

" Spell toggle
:map <F7> :setlocal spell! <CR>

" ------------------------- Look and feel options ------------------------------
"Others very nice themes: deus abstract afterglow ayu apprentice
colorscheme ayu

if exists('g:gnvim')
    " GNvim-specific configuration goes here
    set guifont=Fantasque\ Sans\ Mono\ Regular:h14
endif

" Link the Conceal highlight configuration to the Normal configuration.
highlight! link Conceal Normal 
