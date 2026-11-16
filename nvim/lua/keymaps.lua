vim.g.mapleader = " "

vim.keymap.set("n", "<leader>w", "<cmd>w<cr>", { desc = "write file" })
vim.keymap.set("n", "<leader>q", "<cmd>q<cr>", { desc = "quit window" })
vim.keymap.set("n", "<leader>Q", "<cmd>qa<cr>", { desc = "quit all" })

vim.keymap.set("x", "p", [["_dP]], { desc = "paste over selection without losing yanked text" })
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "delete without yanking" })

vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("n", "<C-c>", ":nohl<CR>", { desc = "clear search highlighting", silent = true })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "move lines down in visual selection" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "move lines up in visual selection" })

vim.keymap.set("v", "<", "<gv", { desc = "unindent and keep selection" })
vim.keymap.set("v", ">", ">gv", { desc = "indent and keep selection" })

vim.keymap.set("n", "J", "mzJ`z", { desc = "join lines without moving cursor" })

vim.keymap.set("n", "<leader>/", "gcc", { remap = true, desc = "toggle comment" })
vim.keymap.set("v", "<leader>/", "gc", { remap = true, desc = "toggle comment" })

vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "move down in buffer with cursor centered" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "move up in buffer with cursor centered" })

vim.keymap.set("n", "n", "nzzzv", { desc = "next search result with cursor centered" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "previous search result with cursor centered" })

vim.keymap.set("n", ";r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>]], { desc = "replace word cursor is on globally" })

vim.keymap.set("n", "<leader>re", "<cmd>restart<cr>", { desc = "restart)" })

vim.keymap.set("n", "<leader>u", function()
    vim.cmd.packadd("nvim.undotree")
    require("undotree").open()
end, { desc = "toggle builtin undotree" })
