require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Fast w, q, x
map('n', '<Leader>w', ':w<CR>')
map('n', '<Leader>x', ':x<CR>')
map('n', '<Leader>q', ':q<CR>')

-- Search toggle
map('n', '<Leader>/', ':set hlsearch!<CR>')

-- Toggle spell
map({'n','v'}, '<F7>', ':setlocal spell! <CR>')

-- Set pwd to current directory and print it
map({'n','v'}, '<leader>cd', ':cd %:p:h<CR>:pwd<CR>')

--Buffer stuff. Buffer == Ctrl
map('n', '<C-h>', ':bp<CR>')
map('n', '<C-l>', ':bn<CR>')
map('n', '<Leader>bd', ':bp <BAR> bd #<CR>')

-- To do > and < remainds the selection
map('v', '<', '<gv')
map('v', '>', '>gv')
