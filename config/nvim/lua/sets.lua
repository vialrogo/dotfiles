vim.opt.tabstop=4                       --Tabsize
vim.opt.shiftwidth=4                    --Number of spaces to use for each step of (auto)indent.
vim.opt.shiftround=true                 --use multiple of shiftwidth when indenting with '<' and '>'
vim.opt.expandtab=true                  --Use the appropriate number of spaces to insert a <Tab>. To insert a real tab when 'expandtab' is on, use CTRL-V <Tab>.
vim.opt.number=true                     --Show line numbers.
vim.opt.showmatch=true                  --When a bracket is inserted, briefly jump to the matching one.
vim.opt.ignorecase=true                 --Ignore case in search patterns.
vim.opt.smartcase=true                  --Override the 'ignorecase' option if the search pattern contains upper case characters.
vim.opt.copyindent=true                 --Copy the previous indentation on autoindenting"
vim.opt.wrapmargin=0                     --Number of characters for the wrap count.
vim.wo.wrap = true                      --This enables 'visual' wrapping
vim.wo.linebreak = true                 --Wrapping only in complete words
vim.wo.list = false                     --Remove chars on break characters
vim.opt.textwidth=0                     --This turns off physical line wrapping (ie: automatic insertion of newlines)
vim.opt.mouse=a                         --Enable the use of the mouse.
vim.opt.undolevels=1000                 --use many levels of undo
vim.opt.title=true                      --change the terminal's title
vim.opt.backup=false                    --Oh, and man… never ever let Vim write a backup file! They did that in the 70’s. 
vim.opt.swapfile=false                  --Use modern ways for tracking your changes, for God’s sake.
vim.opt.fileencoding="utf-8"            --Default file encoding
vim.opt.spelllang="pt_br"               --Set the spell language
vim.opt.cursorline=true                 --Set the current cursorline highlight
vim.opt.conceallevel=2                  --Set de conceal (dynamic replace of _X or \alpha characters).
vim.opt.concealcursor="c"               --Set the conseal cursor for full text display in normal and command mode. Other modes: n-> normal, c-> command, v-> visual, i-> insert
vim.opt.whichwrap:append("<,>,h,l,[,]") --This causes the left and right arrow keys, as well as h and l, to wrap when used at beginning or end of lines.
vim.opt.scrolloff=2                     --The number of lines before and after of the cursor position. If is a big number, the cursor is always in the center of the screen.
vim.opt.colorcolumn="+1"                --highlight column after 'textwidth'
vim.opt.joinspaces=false                --Remove de second spaces with join (J) after '.', '?' and '!'
vim.opt.hidden=true                     --Open new buffer without saving to a currently modified file
vim.opt.foldmethod="syntax"             --Set foldmethod
vim.opt.termguicolors=true              --Enables 24-bit RGB color in the TUI.
vim.opt.modifiable=true                 --Modificable

