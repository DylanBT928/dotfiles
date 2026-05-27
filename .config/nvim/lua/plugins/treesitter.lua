local treesitter = require("nvim-treesitter")

local ensure_installed = {
    "c",
    "cpp",
    "cmake",
    "make",
    "asm",
    "python",
    "gitignore",
    "json",
}

treesitter.install(ensure_installed)

vim.api.nvim_create_autocmd("FileType", {
    pattern = "*",
    callback = function(args)
        local buf = args.buf
        local ft = vim.bo[buf].filetype

        local lang = vim.treesitter.language.get_lang(ft)
        if not lang then
            return
        end

        local ok_add = pcall(vim.treesitter.language.add, lang)
        if not ok_add then
            return
        end

        pcall(vim.treesitter.start, buf, lang)
    end,
})

require("nvim-treesitter.configs").setup({
    indent = {
        enable = false,
    }
})
