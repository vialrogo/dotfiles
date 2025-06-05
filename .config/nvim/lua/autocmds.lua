require "nvchad.autocmds"

-- Set the fold to all open.
vim.api.nvim_create_autocmd("BufRead", { pattern = "*", command = [[normal zR]] })

-- Link the Conceal highlight configuration to the Normal configuration.
vim.api.nvim_set_hl(0, 'Conceal', { link = 'Normal' })
