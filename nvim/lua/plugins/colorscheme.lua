return {
	"rebelot/kanagawa.nvim",
	name = "kanagawa",
	priority = 1000,
	config = function()
		vim.cmd("colorscheme kanagawa")
		vim.api.nvim_set_hl(0, "LineNr", { fg = "#7c6756" })
	end,
}
