vim.g.mapleader = " "

require('lazy_conf')
require('sets')
require('keymaps')
-- require('plugins/lsp')
-- require('plugins/nvim-cmp')

-- ----------------------- Look and feel options -----------------------------
vim.cmd.colorscheme('kanagawa')
if vim.g.neovide then
    -- vim.opt.guifont = 'CaskaydiaCove Nerd Font Mono:h14'
    -- vim.opt.guifont = 'Fantasque Sans Mono:h14'
    -- vim.opt.guifont = 'FiraCode Nerd Font:h13'
    vim.g.neovide_hide_mouse_when_typing = false
end

-- ------------------------------ Others ---------------------------------------
vim.api.nvim_create_autocmd("BufRead", { pattern = "*", command = [[normal zR]] })                  -- Set de fold to all open.

vim.api.nvim_create_autocmd('Filetype', { pattern = 'wiki', command = [[WikiEnable]] })
vim.api.nvim_create_autocmd('Filetype', { pattern = 'wiki', command = [[ListsEnable]] })
vim.api.nvim_create_autocmd('Filetype', { pattern = 'wiki', command = [[setlocal wrap]] })

vim.api.nvim_set_hl(0, 'Conceal', { link = 'Normal' })                                              -- Link the Conceal highlight configuration to the Normal configuration.
