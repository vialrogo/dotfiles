local o = vim.o
local wo = vim.wo

--Tabsize
o.tabstop=2

--Tabsize
o.softtabstop=2

--Number of spaces to use for each step of (auto)indent.
o.shiftwidth=2

--use multiple of shiftwidth when indenting with '<' and '>'
o.shiftround=true

--Use the appropriate number of spaces to insert a <Tab>.
o.expandtab=true

--Show line numbers.
o.number=true

--When a bracket is inserted, briefly jump to the matching one.
o.showmatch=true

--Ignore case in search patterns.
o.ignorecase=true

--Override the 'ignorecase' option if the search pattern contains upper case characters.
o.smartcase=true

--Copy the previous indentation on autoindenting"
o.copyindent=true

--Number of characters for the wrap count.
o.wrapmargin=0

--This enables 'visual' wrapping
wo.wrap = true

--Wrapping only in complete words
wo.linebreak = true

--Remove chars on break characters
wo.list = false

--This turns off physical line wrapping (ie: automatic insertion of newlines)
o.textwidth=0

--Enable the use of the mouse.
o.mouse=a

--use many levels of undo
o.undolevels=1000

--change the terminal's title
o.title=true

--Oh, and man… never ever let Vim write a backup file! They did that in the 70’s.-
o.backup=false

--Use modern ways for tracking your changes, for God’s sake.
o.swapfile=false

--Default file encoding
o.fileencoding="utf-8"

--Set the spell language
o.spelllang="pt_br"

--Set the current cursorline highlight
o.cursorline=true

--Set de conceal (dynamic replace of _X or \alpha characters).
o.conceallevel=2

--Set the conseal cursor for full text display in normal and command mode. Other modes: n-> normal, c-> command, v-> visual, i-> insert
o.concealcursor="c"

--This causes the left and right arrow keys, as well as h and l, to wrap when used at beginning or end of lines.
o.whichwrap="<,>,h,l,[,],b,s"

--The number of lines before and after of the cursor position. If is a big number, the cursor is always in the center of the screen.
o.scrolloff=2

--highlight column after 'textwidth'
o.colorcolumn="+1"

--Remove the second spaces with join (J) after '.', '?' and '!'
o.joinspaces=false

--Open a new buffer without saving to a currently modified file
o.hidden=true

--Set foldmethod
o.foldmethod="syntax"

--Enables 24-bit RGB color in the TUI.
o.termguicolors=true

--Modificable
o.modifiable=true

--Color scheme
-- vim.cmd.colorscheme('kanagawa')
vim.cmd.colorscheme('everforest')

--Set the fold to all open.
vim.api.nvim_create_autocmd("BufRead", { pattern = "*", command = [[normal zR]] })

vim.api.nvim_set_hl(0, 'Conceal', { link = 'Normal' })
-- Link the Conceal highlight configuration to the Normal configuration.


