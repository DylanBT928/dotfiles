return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function(_, opts)
		require("nvim-treesitter.configs").setup(opts)
	end,
	opts = {
		ensure_installed = {
			"cpp",
			"c",
			"bash",
			"cmake",
			"make",
			"lua",
			"python",
			"json",
			"yaml",
			"gitignore",
			"glsl",
			"hlsl",
		},
		highlight = {
			enable = true,
		},
		indent = {
			enable = false,
		},
	},
}
