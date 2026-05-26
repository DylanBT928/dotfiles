local bufferline = require("bufferline")

bufferline.setup()

vim.cmd([[hi BufferLineFill guibg=NONE ctermbg=NONE]])

vim.keymap.set("n", "<leader>[", "<cmd>BufferLineCyclePrev<CR>", { desc = "previous buffer" })
vim.keymap.set("n", "<leader>]", "<cmd>BufferLineCycleNext<CR>", { desc = "next buffer" })
vim.keymap.set("n", "<leader>x", "<cmd>bdelete<CR>", { desc = "close current buffer" })
