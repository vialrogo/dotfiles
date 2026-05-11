-- Globaly remove all the markdown styles. This remove the 4 spaces tab mandatory
vim.g.markdown_recommended_style = 0

-- Indent behaivour
vim.opt.tabstop = 2       -- how many spaces a <Tab> counts for
vim.opt.softtabstop = 2   -- spaces inserted when pressing <Tab>
vim.opt.expandtab = true  -- use spaces instead of real tabs

vim.opt.shiftwidth = 2    -- size of >> << and autoindent
vim.opt.shiftround = true -- use multiple of shiftwidth when indenting with '<' and '>'
vim.opt.copyindent = true -- Copy the previous indentation on autoindenting"


-- Wrap behaivour
vim.opt.wrap = true -- This enables 'visual' wrapping
vim.opt.linebreak = true -- Wrapping only in complete words
vim.opt.textwidth = 0 -- This turns off physical line wrapping (ie: automatic insertion of newlines)

vim.opt.whichwrap = "<,>,h,l,[,],b,s" -- This causes the left and right arrow keys, as well as h and l, to wrap

vim.opt.showbreak = "↳ " -- Define the showbreak string
vim.opt.breakindent = true -- Keeps wrapped lines visually aligned
vim.opt.breakindentopt = "shift:2,sbr" -- Define the break options: Two spaces and put the string


-- Status colum behaivor
vim.opt.number = true             -- Show line numbers
vim.opt.relativenumber = true     -- Show line numbers relative to the current line

vim.opt.signcolumn = "yes"        -- Controls the left column for signs (git, diagnostics)
vim.opt.fillchars = { eob = " " } -- Controls filler characters in UI. Makes UI look modern/minimal


-- Completion
vim.opt.complete = { ".", "w", "b", "u" }               -- Where completion comes from. .→current buffer; w→other windows; b→other buffers; u→unloaded buffers
vim.opt.completeopt = { "menu", "menuone", "noselect" } -- Controls how the completion menu behaves. menu → show popup menu; menuone → show even for 1 item; noselect → don’t auto-select anything
vim.opt.infercase = true                                -- Makes completion adapt to what you typed


-- Search options
vim.opt.ignorecase = true -- Ignore case in search patterns.
vim.opt.smartcase = true  -- Override the 'ignorecase' option if the search pattern contains upper case characters.


-- Graphical options
vim.opt.termguicolors = true                   -- Enables 24-bit RGB color in the TUI.
vim.opt.title = true                           -- change the terminal's title
vim.opt.winborder = "rounded"                  -- Round the borders
vim.opt.showmatch = true                       -- When a bracket is inserted, briefly jump to the matching one.
vim.opt.scrolloff = 2                          -- The number of lines before and after of the cursor position.
vim.opt.smoothscroll = true                    -- Smooth scroll
vim.opt.cmdheight = 0                          -- Hides command line when not in use
vim.opt.shortmess:append("c")                  -- Reduces message noise
vim.opt.cursorline = true                      -- Set the current cursorline highlight
vim.opt.confirm = true                         -- Confirm before quit
vim.opt.virtualedit =
"block"                                        -- Allows cursor in “non-existent” spaces in block environment.
vim.opt.guifont = "CaskaydiaCove NF Light:h15" --Gui font

-- Message options
vim.opt.shortmess:append("W") -- don't show "written" after save
vim.opt.shortmess:append("A") -- don't show swap file messages
vim.opt.shortmess:append("c") -- don't show completion messages
vim.opt.shortmess:append("F") -- don't show file info when editing

-- Conceal
vim.opt.conceallevel = 2    -- Set de conceal (dynamic replace of _X or \alpha characters).
vim.opt.concealcursor = "c" -- Set the conseal cursor for full text display in normal and command mode.


-- Folds
vim.opt.foldmethod = "expr"                          -- Set foldmethod to expr for modern treesitter
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()" -- Call the correct expression
vim.opt.foldlevelstart = 99                          -- Set the start fold level to all open


-- Misc
vim.opt.mouse = a              -- Enable the use of the mouse.
vim.opt.backup = false         -- Oh, and man… never ever let Vim write a backup file! They did that in the 70’s
vim.opt.swapfile = false       -- Use modern ways for tracking your changes, for God’s sake.
vim.opt.fileencoding = "utf-8" -- Default file encoding
vim.opt.updatetime = 200       -- Controls delay for idle events for faster results
vim.opt.spelllang = "pt_br"    -- Set the spell language
