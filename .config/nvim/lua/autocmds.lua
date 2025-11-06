-- Link the Conceal highlight configuration to the Normal configuration.
vim.api.nvim_set_hl(0, "Conceal", { 
  link = "Normal" 
})
