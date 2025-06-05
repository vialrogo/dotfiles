return {
    'KeitaNakamura/tex-conceal.vim', -- A vim plugin extends the Conceal feature for LaTeX.
    lazy = false,
    config = function()
        vim.opt.conceallevel=2
        vim.g.tex_conceal = "abdmgs"                            -- Set to: a->accents/ligatures, b->bold/italic, c->delimiters, m->math, g->greek, s -> super/subscripts.
        vim.g.tex_superscripts= "[0-9a-zA-W.,:;+-<>/()=]"       -- To avoid having inscrutable utf-8 glyphs appear,
        vim.g.tex_subscripts= "[0-9aehijklmnoprstuvx,+-/().]"   -- To avoid having inscrutable utf-8 glyphs appear,
    end,
}
