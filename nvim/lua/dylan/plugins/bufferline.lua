return {
    "akinsho/bufferline.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    version = "*",
    opts = {
        options = {
            mode = "tabs",
            separator_style = "thin",
            show_close_icon = false,
            show_tab_indicators = true,
            always_show_bufferline = true,
            enforce_regular_tabs = true,
            color_icons = true,
        },
    },
}
