local options = {noremap = true, silent = true}
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
vim.keymap.set('i', '<C-p>', '<C-r><C-p>+', options)

-- To do > and < remainds the selection
vim.keymap.set('v', '<', '<gv', options)
vim.keymap.set('v', '>', '>gv', options)

-- Toggle spell
vim.keymap.set({'n','v','i'}, '<F7>', ':setlocal spell! <CR>', options)
