call plug#begin('~/.vim/plugged')       " Plugins will be downloaded under the specified directory.
" Declare the list of plugins.
Plug 'flrnd/candid.vim'
Plug 'flazz/vim-colorschemes'
Plug 'scrooloose/syntastic'
Plug 'gabrielelana/vim-markdown'
Plug 'embear/vim-localvimrc'
Plug 'sheerun/vim-polyglot'
Plug 'kien/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'shougo/deoplete.nvim'             " Requers pip install msgpack-python pynvim
Plug 'roxma/nvim-yarp'                  " Dependency of deoplete
Plug 'roxma/vim-hug-neovim-rpc'         " Dependency of deoplete
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'lervag/vimtex'
Plug 'keitanakamura/tex-conceal.vim'

call plug#end()                         " List ends here. Plugins become visible to Vim after this call.

" --------------------------------- syntastic -----------------------------------
let g:syntastic_always_populate_loc_list = 1    " Enable this option to tell syntastic to always stick any detected errors into the location-list
let g:syntastic_check_on_open = 1               " syntastic in active mode will run syntax checks when buffers are first loaded, as well as on saving
let g:syntastic_auto_loc_list = 2               " When set to 2 the error window will be automatically closed when no errors are detected, but not opened automatically. >
let g:syntastic_check_on_wq = 0                 " In active mode syntax checks are normally run whenever buffers are written to disk. Set 0 to skip check when you quit Vim.

" ------------------------------- vim-markdown ----------------------------------
let g:markdown_enable_conceal = 1   " Conceal common expresions (bold, italic, etc.)

" --------------------------------- localvimrc ---------------------------------
let g:localvimrc_ask=0              " Don't ask for load localvim on startup

" --------------------------------- ctrlp.vim ----------------------------------
set wildmode=list:longest,list:full
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.o,*.obj,.git,*.rbc,.pyc,__pycache__
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|tox)$'
let g:ctrlp_map = '<leader>e'
let g:ctrlp_show_hidden = 1

" --------------------------------- airline ------------------------------------
let g:airline_powerline_fonts = 1                   " airline fonts. For the correct fonts and <> symbols, see the documentation. Is necessary add a font to the local files
let g:airline#extensions#tabline#enabled = 1        " Enable the list of buffers AKA airtab
let g:airline#extensions#tabline#fnamemod = ':t'    " Show just the filename
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#syntastic#enabled = 1      " Enable syntastics plugin

" ------------------------------ airline-themes --------------------------------
let g:airline_theme='base16'                        " Set airline theme

" ---------------------------------- deoplete ----------------------------------
let g:deoplete#enable_at_startup = 1                                " Enable deoplete completation at startup
" Use Tab for next entry on dialog
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"            
" Use S-Tab for previus entry on dialog
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" ---------------------------------- ultisnips ---------------------------------
let g:UltiSnipsExpandTrigger="<c-k>"        " Trigger configuration for expand
let g:UltiSnipsJumpForwardTrigger="<c-n>"   " Trigger configuration for jump forward
let g:UltiSnipsEditSplit="vertical"         " If you want :UltiSnipsEdit to split your window.

" --------------------------------- commentary ---------------------------------
autocmd FileType matlab setlocal commentstring=%\ %s                                                " File type definition for Matlab language
autocmd BufNewFile,BufReadPost,BufRead *.R,*.Rnw,*.Rd,*.Rmd,*.Rrst setlocal commentstring=#\ %s     " File type definition for R language
autocmd FileType c,cpp,java setlocal commentstring=//\ %s                                           " Change default /* for // for comments in java, c and cpp
 
" ----------------------------------- Vimtex -- --------------------------------
let g:tex_flavor = "latex"      " Define latex by default for any *.tex file

" -------------------------------- tex-conceal ---------------------------------
let g:tex_conceal = "abdmgs"                            " Set the conceal mode to: a-> accents/ligatures, b -> bold/italic, c -> delimiters, m -> math, g -> greek, s -> superscripts/subscripts. The default is admgs
let g:tex_superscripts= "[0-9a-zA-W.,:;+-<>/()=]"       " To avoid having inscrutable utf-8 glyphs appear,
let g:tex_subscripts= "[0-9aehijklmnoprstuvx,+-/().]"   " To avoid having inscrutable utf-8 glyphs appear,

" ------------------------------------- Sets  ----------------------------------
set tabstop=4                   " Number of spaces that a <Tab> in the file counts for. 
set shiftwidth=4                " Number of spaces to use for each step of (auto)indent.
set shiftround                  " use multiple of shiftwidth when indenting with '<' and '>'
set expandtab                   " Use the appropriate number of spaces to insert a <Tab>. Spaces are used in indents with the '>' and '<' commands and when 'autoindent' is on. To insert a real tab when 'expandtab' is on, use CTRL-V <Tab>.
set smarttab                    " When on, a <Tab> in front of a line inserts blanks according to 'shiftwidth'. 'tabstop' is used in other places. A <BS> will delete a 'shiftwidth' worth of space at the start of the line.
set showcmd                     " Show (partial) command in status line.
set number                      " Show line numbers.
set showmatch                   " When a bracket is inserted, briefly jump to the matching one. The jump is only done if the match can be seen on  screen. The time to show the match can be set with 'matchtime'.
set hlsearch                    " When there is a previous search pattern, highlight all its matches.
set incsearch                   " While typing a search command, show immediately where the so far typed pattern matches.
set ignorecase                  " Ignore case in search patterns.
set smartcase                   " Override the 'ignorecase' option if the search pattern contains upper case characters.
set backspace=indent,eol,start  " Influences the working of <BS>, <Del>, CTRL-W and CTRL-U in Insert mode. This is a list of items, separated by commas. Each item allows a way to backspace over something.
set autoindent                  " Copy indent from current line when starting a new line (typing <CR> in Insert mode or when using the "o" or "O" command).
set copyindent                  " Copy the previous indentation on autoindenting"
set wrapmargin=0                " Number of characters for the wrap count.
set wrap                        " This enables "visual" wrapping
set lbr                         " Wrapping only in complete words
set textwidth=0                 " This turns off physical line wrapping (ie: automatic insertion of newlines)
set ruler                       " Show the line and column number of the cursor position, separated by a comma.
set termguicolors
set background=dark             " When set to "dark", will try to use colors that look good on a dark background. When set to "light" try to use colors that look good on a light background. Any other value is illegal.
set mouse=a                     " Enable the use of the mouse.
set history=1000                " remember more commands and search history
set undolevels=1000             " use many muchos levels of undo
set wildignore=*.swp,*.bak      "Ignore this extensions to auto-complete
set title                       " change the terminal's title
set visualbell                  " don't beep
set noerrorbells                " don't beep"
set nobackup                    " Oh, and man… never ever let Vim write a backup file! They did that in the 70’s. 
set noswapfile                  " Use modern ways for tracking your changes, for God’s sake.
set pastetoggle=<F2>            " Then, when in insert mode, ready to paste, press <F2>, Vim will switch to paste mode, disabling all kinds of smartness
set encoding=utf-8              " Set the codification
set fileencoding=utf-8
set fileencodings=utf-8,latin1,latin2
" set spell                       " Set the spell revision
set spelllang=pt                " Set the spell language
set nocp                        " This changes the values of a LOT of options, enabling features which are not Vi compatible but really really nice. 
set cursorline                  " Set the current cursorline highlight
set switchbuf=usetab,newtab     " This should mean switching to the existing tab if the buffer is open, or creating a new one if not.
" set relativenumber              " Amazing number line conf. Provides relative number line to the possition.
set conceallevel=2              " Set de conceal (dinamic replace of _X or \alpha caracteres).
set concealcursor=c             " Set the conseal cursor for full text display in normal and command mode. Other modes: n-> normal, c-> command, v-> visual, i-> insert
set whichwrap+=<,>,h,l,[,]      " This causes the left and right arrow keys, as well as h and l, to wrap when used at beginning or end of lines. ( < > are the cursor keys used in normal and visual mode, and [ ] are the cursor keys in insert mode).)
set scrolloff=2                 " The number of lines before and after of the cursor possition. If is a big number, the cursor is always in the center of the screen.
set colorcolumn=0               " highlight column after 'textwidth'
set autoread                    " Make Vim automatically refresh any unchanged files.
set hidden                      " It hides buffers instead of closing them. This means that you can have unwritten changes to a file and open a new file

" ------------------------------- Syntax and files -----------------------------
filetype plugin indent on
syntax on                       

" Force all *.md files to be markdown
autocmd BufNewFile,BufReadPost,BufRead *.markdown,*.mdown,*.mkd,*.mkdn,*.md set filetype=markdown

" Force all *.cir files to be spice netlist files
autocmd BufNewFile,BufReadPost,BufRead *.cir set filetype=spice

" Folding for syntax languages
autocmd Syntax c,cpp,vim,xml,html,xhtml,perl,python setlocal foldmethod=syntax

" Fold starup status
autocmd BufRead * normal zR

" ------------------------------------ Basic -----------------------------------
" Remap mapleader
let mapleader = "\<Space>"

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

" cut, copy, paste from standar sytem buffer in visual mode and paste in insertion
vnoremap <C-y> "+y
nnoremap <C-y> "+y
vnoremap <C-p> "+gp
nnoremap <C-p> "+gp
inoremap <C-p> <C-r><C-p>+

"" Vmap for maintain Visual Mode after shifting > and <
vmap < <gv
vmap > >gv

" Spell togle
:map <F7> :setlocal spell! <CR>

" ------------------------- ConfirmQuit function  ------------------------------
" Function
function! ConfirmQuit(writeFile)
    if (a:writeFile)
        if (expand('%:t')=="")
            echo "Can't save a file with no name."
            return
        endif
        :write
    endif

    if (winnr('$')==1 && tabpagenr('$')==1) " It's the last window/tab?
        if (confirm("Do you really want to quit?", "&Yes\n&No", 2)==1)  " Confirm dialog. When No answer, return 2. When cancel, return 0.
            :quit
        endif
    else " Wasn't the last. Close without problems
        :quit
    endif
endfu

" Regular key map
cnoremap <silent> q<CR>  :call ConfirmQuit(0)<CR>
cnoremap <silent> x<CR>  :call ConfirmQuit(1)<CR>

" Leader key maps
nnoremap <silent> <Leader>w :w<CR> 
nnoremap <silent> <Leader>x :call ConfirmQuit(1)<CR>
nnoremap <silent> <Leader>q :call ConfirmQuit(0)<CR>
nnoremap <silent> <Leader>o :only<CR> 

" ---------------------- AdjustFontSize function -------------------------------
" local variables
let s:pattern = '^\(.* \)\([1-9][0-9]*\)$'
let s:minfontsize = 8
let s:maxfontsize = 24

" Function to change font size an amount
function! AdjustFontSize(amount)
  if has("gui_running")
    let fontname = substitute(&guifont, s:pattern, '\1', '')
    let cursize = substitute(&guifont, s:pattern, '\2', '')
    let newsize = cursize + a:amount
    if (newsize >= s:minfontsize) && (newsize <= s:maxfontsize)
      let newfont = fontname . newsize
      let &guifont = newfont
    endif
  else
    echoerr "You need to run the GTK version of Vim to use this function."
  endif
endfunction

" Function to set font size
function! SetFontSize(fontSize)
  if has("gui_running")
    let fontname = substitute(&guifont, s:pattern, '\1', '')
    if (a:fontSize >= s:minfontsize) && (a:fontSize <= s:maxfontsize)
      let newfont = fontname . a:fontSize
      let &guifont = newfont
    endif
  else
    echoerr "You need to run the GTK version of Vim to use this function."
  endif
endfunction

" Increase the font
function! LargerFont()
  call AdjustFontSize(1)
endfunction
command! LargerFont call LargerFont()

" Decrease the font
function! SmallerFont()
  call AdjustFontSize(-1)
endfunction
command! SmallerFont call SmallerFont()

" Set the font size to the default valor
command! NormalSize call SetFontSize(13)
command! -nargs=1 SetFontSize call SetFontSize(<f-args>)

" Key map for the functions
nnoremap <silent> <Leader>] :LargerFont <CR>
nnoremap <silent> <Leader>[ :SmallerFont <CR>
nnoremap <silent> <Leader>= :NormalSize <CR>

" ------------------------- Look and feel options ------------------------------
" Remove all bars in GVim
set go-=m
set go-=T
set go-=L
set go-=r

" Set the full colors to the shell for full theme suport
set t_Co=256

" Vim airline always
set laststatus=2

set guifont=Fira\ Code\ Regular\ 12
" set guifont=Fantasque\ Sans\ Mono\ Regular\ 14
" set guifont=Inconsolata\ for\ Powerline\ 13
" set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 11

if has("gui_running")  
  colorscheme candid
  set lines=1000 columns=999 " Maximize Gvim at startup
else 
  colorscheme candid
  " hi SpellBad cterm=underline ctermfg=red
endif 

" Link the Conceal highlight configuration to the Normal configuration.
highlight! link Conceal Normal 


