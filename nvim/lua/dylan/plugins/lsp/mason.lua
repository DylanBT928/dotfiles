return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    config = function()
        -- import mason
        local mason = require("mason")

        -- import mason-lspconfig
        local mason_lspconfig = require("mason-lspconfig")

        -- import mason-tool-installer
        local mason_tool_installer = require("mason-tool-installer")

        -- Ensures Mason checks system PATH first
        require("mason").setup({
            PATH = "prepend", -- Ensures Mason checks system PATH first
        })

        -- enable mason and configure icons
        mason.setup({
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                },
            },
        })

        mason_lspconfig.setup({
            -- list of servers for mason to install
            ensure_installed = {
                "clangd", -- C/C++ LSP
            },
        })

        mason_tool_installer.setup({
            ensure_installed = {
                "prettier", -- prettier formatter
                "stylua", -- lua formatter
                "isort", -- python formatter
                "black", -- python formatter
                "pylint", -- linter for Python
                "eslint_d", -- linter for JavaScript/TypeScript
                "clang-format", -- C/C++ formatter
                "cpplint", -- C/C++ linter
            },
        })
    end,
}
