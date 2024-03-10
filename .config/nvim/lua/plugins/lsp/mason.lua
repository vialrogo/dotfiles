return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    config = function()
        -- enable mason and configure icons
        require("mason").setup({
        ui = {
            icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
            },
        },
        })

        require("mason-lspconfig").setup({
        -- list of servers for mason to install
        ensure_installed = {
            'bashls',
            'clangd',
            'csharp_ls',
            'cmake',
            'cssls',
            'dockerls',
            'docker_compose_language_service',
            'html',
            'texlab',
            'marksman',
            'pyright',
            'sqlls',
            'yamlls',
        },
        -- auto-install configured servers (with lspconfig)
        automatic_installation = true, -- not the same as ensure_installed
        })

        require("mason-tool-installer").setup({
        ensure_installed = {
            "prettier", -- prettier formatter
            "isort", -- python formatter
            "black", -- python formatter
            "pylint", -- python linter
            "cpplint", -- cpp linter
            "markdownlint", -- markdown linter
            "cmakelint", -- cmake linter
        },
        })
    end,
}
