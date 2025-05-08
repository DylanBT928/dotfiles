return {
    {
        "rose-pine/neovim",
        name = "rose-pine",
        priority = 1000, -- Ensure it loads first
        config = function(_, opts)
            vim.cmd("colorscheme rose-pine") -- Apply the colorscheme
        end,
    },
}
