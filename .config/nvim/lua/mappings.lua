local map = vim.keymap.set

-- Geral
map("n", ";", ":", { desc = "CMD enter command mode" })
map('i', 'jk', '<Esc>')

-- Fast quit
map('n', '<Leader>w', ':w<CR>')
map('n', '<Leader>x', ':x<CR>')
map('n', '<Leader>q', ':q<CR>')

-- Search toggle
map('n', '<Leader>/', ':set hlsearch!<CR>')

-- Folds
map('n', '<F8>', 'zM')
map('n', '<F10>', 'zR')

--Buffer stuff. Buffer == Ctrl
map('n', '<C-h>', ':bp<CR>')
map('n', '<C-l>', ':bn<CR>')
map('n', '<Leader>bd', ':bp <BAR> bd #<CR>')

-- Global copy and paste
map({'n', 'v'}, '<C-y>', '"+y')
map({'n', 'v'}, '<C-p>', '"+gp')
map({'i'}, '<C-y>', '<C-R>+')

-- To do > and < remainds the selection
map('v', '<', '<gv')
map('v', '>', '>gv')

-- Toggle spell
map({'n','v'}, '<F7>', ':setlocal spell! <CR>')

-- Set pwd to current directory and print it
map({'n','v'}, '<leader>cd', ':cd %:p:h<CR>:pwd<CR>')

-- Tab on insert mode
map({'i'}, '<leader><Tab>', '<C-o>>>')
map({'i'}, '<leader><S-Tab>', '<C-o><<')
