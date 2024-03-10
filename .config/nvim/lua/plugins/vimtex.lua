return {
    'lervag/vimtex', -- Greate latex support for vim.
    init = function()
        vim.g.tex_flavor = "latex" -- Define latex by default for any *.tex file
    end
}
