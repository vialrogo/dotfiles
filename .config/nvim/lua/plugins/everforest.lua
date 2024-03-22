return {
    'sainnhe/everforest',
    config = function() 

        -- This configuration option should be placed before `colorscheme everforest`.
        -- Available values: 'hard', 'medium'(default), 'soft'
        vim.g.everforest_background = 'hard'

        -- For better performance
        vim.g.everforest_better_performance = 1

    end,
}
