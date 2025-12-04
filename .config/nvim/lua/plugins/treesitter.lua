return {
    {
        "nvim-treesitter/nvim-treesitter",
        lazy = false,
	branch = 'main',
        build = ":TSUpdate",
        
	config = function()
	    require("nvim-treesitter").setup ({

	               -- enable auto install parsers
	               auto_install = true,

	               -- enable syntax highlighting
	               highlight = {
	                 enable = true,
	                 additional_vim_regex_highlighting = false,
	               },

	               -- enable indentation
	               indent = { enable = true },

	               -- enable autotagging (w/ nvim-ts-autotag plugin)
	               autotag = { enable = true },

	               incremental_selection = {
	                   enable = true,
	                   keymaps = {
	                       init_selection = "<C-space>",
	                       node_incremental = "<C-space>",
	                       scope_incremental = false,
	                       node_decremental = "<bs>",
	                   },
	               },

	               -- Force use org rules for wiki files for no error message
	               vim.treesitter.language.register("markdown", "wiki"),
	           })
	       end,
    },
}
