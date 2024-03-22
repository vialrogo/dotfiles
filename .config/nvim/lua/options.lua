--Tabsize
vim.opt.tabstop=4

--Number of spaces to use for each step of (auto)indent.
vim.opt.shiftwidth=4

--use multiple of shiftwidth when indenting with '<' and '>'
vim.opt.shiftround=true

--Use the appropriate number of spaces to insert a <Tab>. To insert a real tab when 'expandtab' is on, use CTRL-V <Tab>.
vim.opt.expandtab=true

--Show line numbers.
vim.opt.number=true

--When a bracket is inserted, briefly jump to the matching one.
vim.opt.showmatch=true

--Ignore case in search patterns.
vim.opt.ignorecase=true

--Override the 'ignorecase' option if the search pattern contains upper case characters.
vim.opt.smartcase=true

--Copy the previous indentation on autoindenting"
vim.opt.copyindent=true

--Number of characters for the wrap count.
vim.opt.wrapmargin=0

--This enables 'visual' wrapping
vim.wo.wrap = true

--Wrapping only in complete words
vim.wo.linebreak = true

--Remove chars on break characters
vim.wo.list = false

--This turns off physical line wrapping (ie: automatic insertion of newlines)
vim.opt.textwidth=0

--Enable the use of the mouse.
vim.opt.mouse=a

--use many levels of undo
vim.opt.undolevels=1000

--change the terminal's title
vim.opt.title=true

--Oh, and man… never ever let Vim write a backup file! They did that in the 70’s. 
vim.opt.backup=false

--Use modern ways for tracking your changes, for God’s sake.
vim.opt.swapfile=false

--Default file encoding
vim.opt.fileencoding="utf-8"

--Set the spell language
vim.opt.spelllang="pt_br"

--Set the current cursorline highlight
vim.opt.cursorline=true

--Set de conceal (dynamic replace of _X or \alpha characters).
vim.opt.conceallevel=2

--Set the conseal cursor for full text display in normal and command mode. Other modes: n-> normal, c-> command, v-> visual, i-> insert
vim.opt.concealcursor="c"

--This causes the left and right arrow keys, as well as h and l, to wrap when used at beginning or end of lines.
vim.opt.whichwrap:append("<,>,h,l,[,]")

--The number of lines before and after of the cursor position. If is a big number, the cursor is always in the center of the screen.
vim.opt.scrolloff=2

--highlight column after 'textwidth'
vim.opt.colorcolumn="+1"

--Remove de second spaces with join (J) after '.', '?' and '!'
vim.opt.joinspaces=false

--Open new buffer without saving to a currently modified file
vim.opt.hidden=true

--Set foldmethod
vim.opt.foldmethod="syntax"

--Enables 24-bit RGB color in the TUI.
vim.opt.termguicolors=true

--Modificable
vim.opt.modifiable=true

--Use clipboard for copy/paste 
vim.opt.clipboard="unnamedplus"

-- Color scheme
vim.cmd.colorscheme('everforest')

-- Set the fold to all open.
vim.api.nvim_create_autocmd("BufRead", { pattern = "*", command = [[normal zR]] })

vim.api.nvim_set_hl(0, 'Conceal', { link = 'Normal' })
-- Link the Conceal highlight configuration to the Normal configuration.
