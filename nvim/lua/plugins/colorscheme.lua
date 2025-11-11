return {
	"sainnhe/sonokai",
	name = "sonokai",
	priority = 1000,
	config = function()
        vim.g.sonokai_transparent_background = 2
		vim.cmd("colorscheme sonokai")
        vim.api.nvim_set_hl(0, "Normal",      { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        vim.api.nvim_set_hl(0, "SignColumn",  { bg = "none" })
		vim.api.nvim_set_hl(0, "LineNr", { fg = "#7c6756" })
	end,
}
