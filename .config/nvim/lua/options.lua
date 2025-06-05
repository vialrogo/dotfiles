require "nvchad.options"

-- add yours here!

local o = vim.o
local wo = vim.wo

 -- to enable cursorline!
o.cursorlineopt ='both'

--use multiple of shiftwidth when indenting with '<' and '>'
o.shiftround=true

--When a bracket is inserted, briefly jump to the matching one.
o.showmatch=true

--Wrapping only in complete words
wo.linebreak = true

--change the terminal's title
o.title=true

--Use modern ways for tracking your changes, for God’s sake.
o.swapfile=false

--Set the spell language
o.spelllang="pt_br"

--Set de conceal (dynamic replace of _X or \alpha characters).
vim.opt.conceallevel=2

--Set the conseal cursor for full text display in normal and command mode. Other modes: n-> normal, c-> command, v-> visual, i-> insert
vim.opt.concealcursor="c"

--The number of lines before and after of the cursor position. If is a big number, the cursor is always in the center of the screen.
vim.opt.scrolloff=2

--Set foldmethod
vim.opt.foldmethod="syntax"

