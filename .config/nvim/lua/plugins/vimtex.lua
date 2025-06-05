return {
    'lervag/vimtex', -- Greate latex support for vim.
    lazy = false,
    init = function()
        vim.g.tex_flavor = "latex" -- Define latex by default for any *.tex file
    end
}
