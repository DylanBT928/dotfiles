-- space bar leader key
vim.g.mapleader = " "

-- buffers
vim.keymap.set("n", "<leader>n", ":bn<cr>")
vim.keymap.set("n", "<leader>p", ":bp<cr>")
vim.keymap.set("n", "<leader>x", ":bd<cr>")

-- yank/paste to clipboard
vim.keymap.set({"n", "v"}, "y", [["+y]])
vim.keymap.set({"n", "v"}, "p", [["+p]])
vim.keymap.set({"n", "v"}, "d", [["+d]])

-- write
vim.keymap.set("n", "<leader>w", "<cmd>write<cr>", { desc = "write file" })

-- quit
vim.keymap.set("n", "<leader>q", "<cmd>quit<cr>", { desc = "quit window" })
vim.keymap.set("n", "<leader>Q", "<cmd>qa<cr>", { desc = "quit all" })

-- split
vim.keymap.set("n", "<leader>-", "<cmd>split<cr>", { desc = "split (horizontal)" })
vim.keymap.set("n", "<leader>|", "<cmd>vsplit<cr>", { desc = "split (vertical)" })

-- PLUGINS

-- telescope
vim.keymap.set("n", ";f", ":Telescope find_files<cr>")
vim.keymap.set("n", ";r", ":Telescope live_grep<cr>")

-- tree
vim.keymap.set("n", "<leader>e", ":NvimTreeFindFileToggle<cr>")

-- nvim-comment
vim.keymap.set({"n", "v"}, "<leader>/", ":CommentToggle<cr>", { desc = "toggle commenting" })

-- lazygit
vim.keymap.set("n", ";g", "<cmd>LazyGit<cr>", { desc = "open lazygit" })
