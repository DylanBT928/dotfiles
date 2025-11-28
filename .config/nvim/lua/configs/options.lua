vim.opt.nu = true -- enable line numbers
vim.opt.relativenumber = true -- relative line numbers

vim.opt.wrap = false -- disable line wrapping

vim.opt.tabstop = 4 -- show tabs as 4 spaces
vim.opt.softtabstop = 4 -- insert/delete in multiples of 4 spaces
vim.opt.shiftwidth = 4 -- tab length
vim.opt.expandtab = true -- tab uses spaces
vim.opt.autoindent = true -- auto-indentation
vim.opt.list = true -- show trailing tabs and whitespace
vim.opt.listchars = {
	tab = "  ",
	lead = " ",
	trail = "-",
	nbsp = "+",
}

vim.opt.ignorecase = true -- ignore case when searching
vim.opt.smartcase = true -- unless capital letter in search

vim.opt.scrolloff = 8 -- minimum number of lines above/below the cursor
vim.opt.sidescrolloff = 8 -- minimum number of columns to keep left/right of the cursor

vim.opt.hlsearch = false -- do not highlight all matches on previous search pattern
vim.opt.incsearch = true -- incrementally highlight searches as you type
