vim.pack.add({
    "https://github.com/sainnhe/sonokai",
    {
        src = 'https://github.com/nvim-neo-tree/neo-tree.nvim',
        version = vim.version.range('3'),
    },
    "https://github.com/nvim-lua/plenary.nvim",
    "https://github.com/MunifTanjim/nui.nvim",
    "https://github.com/nvim-tree/nvim-web-devicons",
    "https://github.com/nvim-mini/mini.nvim",
    {
        src = "https://github.com/nvim-treesitter/nvim-treesitter",
        branch = "main"
    },
    "https://github.com/akinsho/bufferline.nvim",
    "https://github.com/neovim/nvim-lspconfig",
    "https://github.com/mason-org/mason.nvim",
    "https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim",
    "https://github.com/kdheepak/lazygit.nvim",
    "https://github.com/nvim-lualine/lualine.nvim"
})

require("plugins.bufferline")
require("plugins.colorscheme")
require("plugins.lazygit")
require("plugins.lsp")
require("plugins.lualine")
require("plugins.mini")
require("plugins.neotree")
require("plugins.treesitter")
