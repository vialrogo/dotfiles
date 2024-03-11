return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        { "antosha417/nvim-lsp-file-operations", config = true },
    },
    config = function()
        -- import lspconfig plugin
        local lspconfig = require("lspconfig")

        local opts = { noremap = true, silent = true }
        local on_attach = function(client, bufnr)
        opts.buffer = bufnr

        -- set keybinds
        opts.desc = "Show LSP references"
        vim.keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", opts) -- show definition, references

        opts.desc = "Go to declaration"
        vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts) -- go to declaration

        opts.desc = "Show LSP definitions"
        vim.keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts) -- show lsp definitions

        opts.desc = "Show LSP implementations"
        vim.keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts) -- show lsp implementations

        opts.desc = "Show LSP type definitions"
        vim.keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts) -- show lsp type definitions

        opts.desc = "See available code actions"
        vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts) -- see available code actions, in visual mode will apply to selection

        opts.desc = "Smart rename"
        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts) -- smart rename

        opts.desc = "Show buffer diagnostics"
        vim.keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", opts) -- show  diagnostics for file

        opts.desc = "Show line diagnostics"
        vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts) -- show diagnostics for line

        opts.desc = "Go to previous diagnostic"
        vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts) -- jump to previous diagnostic in buffer

        opts.desc = "Go to next diagnostic"
        vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts) -- jump to next diagnostic in buffer

        opts.desc = "Show documentation for what is under cursor"
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts) -- show documentation for what is under cursor

        opts.desc = "Restart LSP"
        vim.keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts) -- mapping to restart lsp if necessary
        end

        -- used to enable autocompletion (assign to every lsp server config)
        local capabilities = require('cmp_nvim_lsp').default_capabilities()

        -- Change the Diagnostic symbols in the sign column (gutter)
        -- (not in youtube nvim video)
        local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
        for type, icon in pairs(signs) do
            local hl = "DiagnosticSign" .. type
            vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
        end

        -- configure bashls server
        lspconfig["bashls"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })

        -- configure clangd server
        lspconfig["clangd"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })

        -- configure cmake server
        lspconfig["cmake"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })

        -- configure csharp_ls server
        lspconfig["omnisharp"].setup({
            cmd = { "dotnet", "/home/vialrogo/.local/share/nvim/mason/packages/omnisharp/libexec/OmniSharp.dll" },
            enable_editorconfig_support = true,
            enable_ms_build_load_projects_on_demand = false,
            enable_roslyn_analyzers = false,
            organize_imports_on_format = false,
            enable_import_completion = false,
            sdk_include_prereleases = true,
            analyze_open_documents_only = false,
            capabilities = capabilities,
            on_attach = on_attach,
        })

        -- configure cssls server
        lspconfig["cssls"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })

        -- configure docker_compose_language_service server
        lspconfig["docker_compose_language_service"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })

        -- configure dockerls server
        lspconfig["dockerls"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })

        -- configure html server
        lspconfig["html"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })

        -- configure marksman server
        lspconfig["marksman"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })

        -- configure pyright server
        lspconfig["pyright"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })

        -- configure sqlls server
        lspconfig["sqlls"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })

        -- configure texlab server
        lspconfig["texlab"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })

        -- configure yamlls server
        lspconfig["yamlls"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })
    end,
}
