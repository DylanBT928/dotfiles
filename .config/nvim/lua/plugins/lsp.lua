local mason = require("mason")
local mason_installer = require("mason-tool-installer")

mason.setup()

mason_installer.setup({
    ensure_installed = {
        "lua-language-server",
        "clangd",
        "pyright",
        "bash-language-server",
        "json-lsp",
        "marksman",
        "neocmakelsp",
    },
    auto_update = false,
    run_on_start = true,
})

vim.keymap.set("n", ";d", vim.lsp.buf.definition, { desc = "go to definition" })
vim.keymap.set("n", ";f", vim.lsp.buf.format, { desc = "format current buffer" })
vim.keymap.set("n", ";xl", vim.diagnostic.open_float, { desc = "Show line diagnostics" })

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = vim.tbl_deep_extend("force", capabilities, require("mini.completion").get_lsp_capabilities())

vim.lsp.config("*", { capabilities = capabilities })

vim.lsp.config("lua_ls", {
    settings = {
        Lua = {
            diagnostics = { globals = { "vim" } },
        },
    },
})

vim.diagnostic.config({
    virtual_text = true,
    signs = false,
    underline = true,
    update_in_insert = false
})

vim.lsp.enable({
    "lua_ls",
    "clangd",
    "pyright",
    "bashls",
    "jsonls",
    "marksman",
    "neocmake",
})
