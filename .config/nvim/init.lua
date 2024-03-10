vim.g.mapleader = " "

require('lazy_conf')
require('sets')
require('keymaps')
-- require('plugins/lsp')
-- require('plugins/nvim-cmp')

-- vim-localvimrc
vim.g.localvimrc_ask = 0                                        -- Doesn't ask before load .lvimrc file

-- vimtex
vim.g.tex_flavor = "latex"                                      -- Define latex by default for any *.tex file

-- tex-conceal
vim.g.tex_conceal = "abdmgs"                                    -- Set to: a->accents/ligatures, b->bold/italic, c->delimiters, m->math, g->greek, s -> super/subscripts.
vim.g.tex_superscripts= "[0-9a-zA-W.,:;+-<>/()=]"               -- To avoid having inscrutable utf-8 glyphs appear,
vim.g.tex_subscripts= "[0-9aehijklmnoprstuvx,+-/().]"           -- To avoid having inscrutable utf-8 glyphs appear,

-- indent-blankline
vim.opt.list = true

-- wiki.vim
vim.g.wiki_root = '~/Wiki'
vim.g.wiki_filetypes = {'wiki'}

-- lists.vim
vim.g.lists_filetypes = {'wiki'}
vim.keymap.set('n', '<C-s>', ':ListsToggle<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<C-c>', ':ListsToggleCheckbox<CR>', {noremap = true, silent = true})

-- bullets.vim
vim.g.bullets_enabled_file_types = "['markdown','wiki','text','gitcommit']"
vim.g.bullets_pad_right = 0

-- nvim-tree.lua
vim.keymap.set('n', '<F3>', ':NvimTreeToggle<CR>', {noremap = true, silent = true})

-- ----------------------- Look and feel options -----------------------------
vim.cmd.colorscheme('kanagawa')
if vim.g.neovide then
    -- vim.opt.guifont = 'CaskaydiaCove Nerd Font Mono:h14'
    -- vim.opt.guifont = 'Fantasque Sans Mono:h14'
    -- vim.opt.guifont = 'FiraCode Nerd Font:h13'
end
vim.g.neovide_hide_mouse_when_typing = false

-- ------------------------------ Others ---------------------------------------
vim.api.nvim_create_autocmd("BufRead", { pattern = "*", command = [[normal zR]] })                  -- Set de fold to all open.

vim.api.nvim_create_autocmd('Filetype', { pattern = 'wiki', command = [[WikiEnable]] })
vim.api.nvim_create_autocmd('Filetype', { pattern = 'wiki', command = [[ListsEnable]] })
vim.api.nvim_create_autocmd('Filetype', { pattern = 'wiki', command = [[setlocal wrap]] })

vim.api.nvim_set_hl(0, 'Conceal', { link = 'Normal' })                                              -- Link the Conceal highlight configuration to the Normal configuration.
