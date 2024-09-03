vim.g.mapleader = " "

-- local options for keymaps
local options = {noremap = true, silent = true}

-- Esc
vim.keymap.set('i', 'jk', '<Esc>', options)

-- Fast quit
vim.keymap.set('n', '<Leader>w', ':w<CR>', options)
vim.keymap.set('n', '<Leader>x', ':x<CR>', options)
vim.keymap.set('n', '<Leader>q', ':q<CR>', options)

-- Search toggle
vim.keymap.set('n', '<Leader>/', ':set hlsearch!<CR>', options)

-- Folds
vim.keymap.set('n', '<F8>', 'zM', options)
vim.keymap.set('n', '<F10>', 'zR', options)

--Buffer stuff. Buffer == Ctrl
vim.keymap.set('n', '<C-h>', ':bp<CR>', options)
vim.keymap.set('n', '<C-l>', ':bn<CR>', options)
vim.keymap.set('n', '<Leader>bd', ':bp <BAR> bd #<CR>', options)

-- Global copy and paste
vim.keymap.set({'n', 'v'}, '<C-y>', '"+y', options)
vim.keymap.set({'n', 'v'}, '<C-p>', '"+gp', options)
vim.keymap.set({'i'}, '<C-v>', '<C-R>+', options)

-- To do > and < remainds the selection
vim.keymap.set('v', '<', '<gv', options)
vim.keymap.set('v', '>', '>gv', options)

-- Toggle spell
vim.keymap.set({'n','v'}, '<F7>', ':setlocal spell! <CR>', options)

-- Set pwd to current directory and print it
vim.keymap.set({'n','v'}, '<leader>cd', ':cd %:p:h<CR>:pwd<CR>', options)

-- Tab on insert mode
vim.keymap.set({'i'}, '<leader><Tab>', '<C-o>>>')
vim.keymap.set({'i'}, '<leader><S-Tab>', '<C-o><<')

