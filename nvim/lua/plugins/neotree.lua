local neotree = require("neo-tree")

neotree.setup({
    close_if_last_window = true,
    enable_git_status = true,
    enable_diagnostics = true,
})

vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle<CR>", { desc = "toggle neotree file explorer" })
