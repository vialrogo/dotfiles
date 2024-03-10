vim.g.mapleader = " "

require('lazy_conf')
require('sets')
require('keymaps')
require('neovide')

-- ----------------------- Look and feel options -----------------------------
vim.cmd.colorscheme('ayu')

-- ------------------------------ Others ---------------------------------------
vim.api.nvim_create_autocmd("BufRead", { pattern = "*", command = [[normal zR]] })                  -- Set de fold to all open.


vim.api.nvim_set_hl(0, 'Conceal', { link = 'Normal' })                                              -- Link the Conceal highlight configuration to the Normal configuration.
