--Tabsize
vim.o.tabstop = 2

--Tabsize
vim.o.softtabstop = 2

--Number of spaces to use for each step of (auto)indent.
vim.o.shiftwidth = 2

--use multiple of shiftwidth when indenting with '<' and '>'
vim.o.shiftround = true

--Use the appropriate number of spaces to insert a <Tab>.
vim.o.expandtab = true

--Show line numbers.
vim.o.number = true

--Show line numbers.
vim.o.relativenumber = true

--When a bracket is inserted, briefly jump to the matching one.
vim.o.showmatch = true

--Ignore case in search patterns.
vim.o.ignorecase = true

--Override the 'ignorecase' option if the search pattern contains upper case characters.
vim.o.smartcase = true

--Copy the previous indentation on autoindenting"
vim.o.copyindent = true

--Number of characters for the wrap count.
vim.o.wrapmargin = 0

--This enables 'visual' wrapping
vim.wo.wrap = true

--Wrapping only in complete words
vim.wo.linebreak = true

--Remove chars on break characters
vim.wo.list = false

--This turns off physical line wrapping (ie: automatic insertion of newlines)
vim.o.textwidth = 0

--Enable the use of the mouse.
vim.o.mouse = a

--use many levels of undo
vim.o.undolevels = 1000

--change the terminal's title
vim.o.title = true

--Oh, and man… never ever let Vim write a backup file! They did that in the 70’s
vim.o.backup = false

--Use modern ways for tracking your changes, for God’s sake.
vim.o.swapfile = false

--Default file encoding
vim.o.fileencoding = "utf-8"

--Set the spell language
vim.o.spelllang = "pt_br"

--Set the current cursorline highlight
vim.o.cursorline = true

--Set de conceal (dynamic replace of _X or \alpha characters).
vim.o.conceallevel = 2

--Set the conseal cursor for full text display in normal and command mode. Other modes: n-> normal, c-> command, v-> visual, i-> insert
vim.o.concealcursor = "c"

--This causes the left and right arrow keys, as well as h and l, to wrap when used at beginning or end of lines.
vim.o.whichwrap = "<,>,h,l,[,],b,s"

--The number of lines before and after of the cursor position. If is a big number, the cursor is always in the center of the screen.
vim.o.scrolloff = 2

--highlight column after 'textwidth'
vim.o.colorcolumn = "+1"

--Remove the second spaces with join (J) after '.', '?' and '!'
vim.o.joinspaces = false

--Open a new buffer without saving to a currently modified file
vim.o.hidden = true

--Set foldmethod
vim.o.foldmethod = "syntax"

--Enables 24-bit RGB color in the TUI.
vim.o.termguicolors = true

--Modificable
vim.o.modifiable = true
