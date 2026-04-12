-- Geral
vim.g.mapleader = " "

vim.keymap.set("n", ";", ":")
vim.keymap.set('i', 'jk', '<Esc>')

-- Fast quit
vim.keymap.set('n', '<Leader>w', ':w<CR>')
vim.keymap.set('n', '<Leader>x', ':x<CR>')
vim.keymap.set('n', '<Leader>q', ':q<CR>')

-- Search toggle
vim.keymap.set('n', '<Leader>/', ':set hlsearch!<CR>')

-- Folds
vim.keymap.set('n', '<F8>', 'zM')
vim.keymap.set('n', '<F9>', 'zR')

--Buffer stuff. Buffer == Ctrl
vim.keymap.set('n', '<C-h>', ':bp<CR>')
vim.keymap.set('n', '<C-l>', ':bn<CR>')
vim.keymap.set('n', '<Leader>bd', ':bp <BAR> bd #<CR>')

-- Global copy and paste
vim.keymap.set({ 'n', 'v' }, '<C-y>', '"+y')
vim.keymap.set({ 'n', 'v' }, '<C-p>', '"+gp')
vim.keymap.set({ 'i' }, '<C-y>', '<C-R>+')

-- To do > and < remainds the selection
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')

-- Toggle spell
vim.keymap.set({ 'n', 'v' }, '<F7>', ':setlocal spell! <CR>')

-- Set pwd to current directory and print it
vim.keymap.set({ 'n', 'v' }, '<leader>cd', ':cd %:p:h<CR>:pwd<CR>')

-- Tab on insert mode
vim.keymap.set({ 'i' }, '<leader><Tab>', '<C-o>>>')
vim.keymap.set({ 'i' }, '<leader><S-Tab>', '<C-o><<')
