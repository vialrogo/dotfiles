"*****************************************************************************
"" NeoBundle core
"*****************************************************************************
if has('vim_starting')
  set nocompatible               " Be iMproved
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

let vundle_readme=expand('~/.vim/bundle/neobundle.vim/README.md')

if !filereadable(vundle_readme)
  echo "Installing NeoBundle..."
  echo ""
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

"*****************************************************************************
"" NeoBundle install packages
"*****************************************************************************
NeoBundle 'Raimondi/delimitMate'
NeoBundle 'bbchung/clighter'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'bling/vim-airline'
NeoBundle 'tommcdo/vim-exchange'
NeoBundle 'sheerun/vim-polyglot'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-commentary'
NeoBundle 'tpope/vim-repeat'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup, this will conveniently prompt you to install them.
NeoBundleCheck

" ----------------------------------------- neocomplete -------------------------------------------
" For newocomplete instalation
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }
" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default']  = '\h\w*'
let g:neocomplete#keyword_patterns['markdown'] = '[À-ú[:alpha:]_][À-ú[:alnum:]_]*'
let g:neocomplete#keyword_patterns['tex']      = '[À-ú[:alpha:]_:][À-ú[:alnum:]_:]*'

" ------------------------------------------ LatexBox ---------------------------------------------
let g:LatexBox_Folding = 1

" ---------------------------------------- airline -------------------------------------------------
" airline fonts. For the correct fonts and <> symbols, see the documentation. Is necessary add a font to the local files
let g:airline_powerline_fonts = 1
" Enable the list of buffers AKA airtab
let g:airline#extensions#tabline#enabled = 1 
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_enable_syntastic = 1
let g:airline_enable_branch = 1

" ---------------------------------------- clighter -------------------------------------------------
let g:clighter_clang_options = ['-std=c++', '-DLinux']

" ---------------------------------------- NERDTree -------------------------------------------------
let NERDTreeShowBookmarks=1
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite

" ---------------------------------------- ctrlp.vim -------------------------------------------------
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,.pyc,__pycache__
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|tox)$'
let g:ctrlp_user_command = "find %s -type f | grep -Ev '"+ g:ctrlp_custom_ignore +"'"
let g:ctrlp_use_caching = 0
let g:ctrlp_map = ',e'

" ---------------------------------------- syntastic -------------------------------------------------
let g:syntastic_always_populate_loc_list=1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '⚠'
let g:syntastic_auto_loc_list=1
let g:syntastic_aggregate_errors = 1

" ---------------------------------------------- Core options -------------------------------------- 
" Define latex by default for any *.tex file
let g:tex_flavor = "latex"
" Set the conceal mode to: a-> accents/ligatures, b -> bold/italic, c -> delimiters, m -> math, g -> greek, s -> superscripts/subscripts. The default is admgs
let g:tex_conceal = "abdmgs"

" ######################################### Sets  ##################################################

set hidden                      " It hides buffers instead of closing them. This means that you can have unwritten changes to a file and open a new file
set tabstop=2                   " Number of spaces that a <Tab> in the file counts for. 
set shiftwidth=2                " Number of spaces to use for each step of (auto)indent.
set shiftround                  " use multiple of shiftwidth when indenting with '<' and '>'
set expandtab                   " Use the appropriate number of spaces to insert a <Tab>. Spaces are used in indents with the '>' and '<' commands and when 'autoindent' is on. To insert a real tab when 'expandtab' is on, use CTRL-V <Tab>.
set smarttab                    " When on, a <Tab> in front of a line inserts blanks according to 'shiftwidth'. 'tabstop' is used in other places. A <BS> will delete a 'shiftwidth' worth of space at the start of the line.
set showcmd                     " Show (partial) command in status line.
set number                      " Show line numbers.
set showmatch                   " When a bracket is inserted, briefly jump to the matching one. The jump is only done if the match can be seen on  screen. The time to show the match can be set with 'matchtime'.
" set hlsearch                    " When there is a previous search pattern, highlight all its matches.
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
set background=dark             " When set to "dark", will try to use colors that look good on a dark background. When set to "light" try to use colors that look good on a light background. Any other value is illegal.
set mouse=a                     " Enable the use of the mouse.
set foldmethod=syntax           " Define folding method
set foldlevelstart=20           " For open the folds on starup
set history=1000                " remember more commands and search history
set undolevels=1000             " use many muchos levels of undo
set wildignore=*.swp,*.bak      "Ignore this extensions to auto-complete
set title                       " change the terminal's title
set visualbell                  " don't beep
set noerrorbells                " don't beep"
set nobackup                    " Oh, and man… never ever let Vim write a backup file! They did that in the 70’s. 
set noswapfile                  " Use modern ways for tracking your changes, for God’s sake.
set pastetoggle=<F2>            " Then, when in insert mode, ready to paste, press <F2>, Vim will switch to paste mode, disabling all kinds of smartness
set autochdir                   " Set working directory as the current directory"
set encoding=utf-8              " Set the codification
set fileencoding=utf-8
set fileencodings=utf-8
" set spell                       " Set the spell revision
set spelllang=en_us             " Set the spell language
set nocp                        " This changes the values of a LOT of options, enabling features which are not Vi compatible but really really nice. 
set cursorline                  " Set the current cursorline highlight
set switchbuf=usetab,newtab     " This should mean switching to the existing tab if the buffer is open, or creating a new one if not.
set relativenumber              " Amazing number line conf. Provides relative number line to the possition.
set conceallevel=2              " Set de conceal (dinamic replace of _X or \alpha caracteres).
set concealcursor=nc            " Set the conseal cursor for full text display in normal and command mode. Other modes: v-> visual, i-> insert
set whichwrap+=<,>,h,l,[,]      " This causes the left and right arrow keys, as well as h and l, to wrap when used at beginning or end of lines. ( < > are the cursor keys used in normal and visual mode, and [ ] are the cursor keys in insert mode).)

" ########################################## KeyMaps  ############################################

" --------------------------------------- neocomplete ------------------------------------------
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
" Close popup by <C-c>.
inoremap <expr><C-c> pumvisible() ? neocomplete#close_popup() : "\<Space>"

" -------------------------------------- neosnippet ---------------------------------------------
" Expand the snippets
imap <C-Space>     <Plug>(neosnippet_expand_or_jump)
smap <C-Space>     <Plug>(neosnippet_expand_or_jump)
xmap <C-Space>     <Plug>(neosnippet_expand_target)
imap <C-@> <C-Space>
smap <C-@> <C-Space>
xmap <C-@> <C-Space>

" --------------------------------------- LatexBox ---------------------------------------------
" LatexBox key maps. I really dont know why but if you use inoremap dont work!!!
imap <buffer> [[     \begin{
imap <buffer> ]] <Plug>LatexCloseCurEnv

" ---------------------------------------- NERDTree -------------------------------------------------
noremap <F3> :NERDTreeToggle<CR>

" --------------------------------------- Otheres ---------------------------------------------
" It clears the search buffer when you press ,/
nnoremap <silent> ,/ :nohlsearch<CR> 

" Mappings to toggle foldsEdit
nnoremap <F8> zM
nnoremap <F10> zR
nnoremap <F9> za

" Faster windows options
nnoremap <silent> ,w :w<CR> 
nnoremap <silent> ,x :x<CR> 
nnoremap <silent> ,q :q<CR> 

" Set W to sudo save
command W w !sudo tee % >/dev/null

" Easy and fast scape shortcut
inoremap jk <ESC>

" Tab options. Tab == Ctrl + Alt
nnoremap <C-A-h> :tabprevious<CR>
nnoremap <C-A-l> :tabnext<CR>
nnoremap <silent> <C-A-j> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <C-A-k> :execute 'silent! tabmove ' . tabpagenr()<CR>

" Windows options. Window == Alt
noremap <A-j> <C-W>w
noremap <A-k> <C-W>W
noremap <A-l> <C-W>l
noremap <A-h> <C-W>h

" Buffer stuff. Buffer == Ctrl
nnoremap <C-h>  :bp<CR>
nnoremap <C-l> :bn<CR>
" Close the current buffer but not the window. Put inside the window the next buffer
nnoremap <silent> ,bd :bp <BAR> bd #<CR>

" GVim GUI hide-show options
nnoremap <C-F1> :if &go=~#'m'<Bar>set go-=m<Bar>else<Bar>set go+=m<Bar>endif<CR>
nnoremap <C-F2> :if &go=~#'T'<Bar>set go-=T<Bar>else<Bar>set go+=T<Bar>endif<CR>
nnoremap <C-F3> :if &go=~#'r'<Bar>set go-=r<Bar>else<Bar>set go+=r<Bar>endif<CR>
nnoremap <C-F4> :if &go=~#'L'<Bar>set go-=L<Bar>else<Bar>set go+=L<Bar>endif<CR>

" cut, copy, paste from standar sytem buffer in visual mode and paste in insertion
vnoremap <C-y> "+y
nnoremap <C-y> "+y
vnoremap <C-d> "+d
nnoremap <C-d> "+d
vnoremap <C-p> "+gp
nnoremap <C-p> "+gp
inoremap <C-p> <C-o>"+gp

"" Vmap for maintain Visual Mode after shifting > and <
vmap < <gv
vmap > >gv

" ################################### Config stuff  ###########################################

syntax on                       " Set the sintax for all files

" Force all *.md files to be markdown
autocmd BufNewFile,BufReadPost,BufRead *.markdown,*.mdown,*.mkd,*.mkdn,*.md set filetype=markdown

" To fix folding
autocmd Syntax c,cpp,vim,xml,html,xhtml setlocal foldmethod=syntax  
autocmd Syntax c,cpp,vim,xml,html,xhtml,perl normal zR 

" --------------------------------- Look and feel options --------------------------------------
" Remove all bars in GVim
set go-=m
set go-=T
set go-=L
set go-=r

" Set the full colors to the shell for full theme suport
set t_Co=256

" Vim airline always
set laststatus=2

"set guifont=Inconsolata\ for\ Powerline\ 13
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 11

if has("gui_running")  
  " Others Very, very good are: jellybeans, railscasts, mustang, molokai, tango2, wombat, bensday, desertEx, busybee 
  colorscheme railscasts
else 
  " Others Very, very good are: jellybeans, railscasts, mustang, molokai, busybee
  colorscheme railscasts
endif 

" Link the Conceal highlight configuration to the Normal configuration. It's a full clone of ALL in the class
highlight! link Conceal Normal 

