vim.g.netrw_banner = 0

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.wrap = false
vim.opt.smartindent = true
vim.opt.inccommand = "split"

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.laststatus = 3

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = vim.fn.stdpath("data") .. "/undodir"
vim.opt.undofile = true

vim.opt.completeopt = "menuone,noselect,fuzzy,nosort"
vim.opt.shortmess:append("c")
vim.opt.clipboard:append("unnamedplus")
vim.opt.isfname:append("@-@")

vim.opt.cursorline = true
vim.opt.guicursor = "n-v-sm:block,i-c-ci:ver25-Cursor,r-cr-o:hor20"

vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

vim.opt.colorcolumn = "0"
vim.opt.signcolumn = "yes"

vim.opt.termguicolors = true

vim.o.cmdheight = 0

vim.opt.list = true
vim.opt.listchars:append("trail:-")

vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "highlight when yanking text",
    callback = function()
        vim.hl.on_yank()
    end,
})
