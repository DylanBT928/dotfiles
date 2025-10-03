return {
	"sainnhe/sonokai",
	name = "sonokai",
	priority = 1000,
	config = function()
		vim.cmd("colorscheme sonokai")
		vim.api.nvim_set_hl(0, "LineNr", { fg = "#7c6756" })
	end,
}
