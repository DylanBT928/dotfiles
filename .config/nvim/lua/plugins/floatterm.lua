return {
	"nvzone/floaterm",
	dependencies = "nvzone/volt",
	opts = {
		border = false,
		size = { h = 60, w = 70 },
		mappings = { sidebar = nil, term = nil },
		terminals = {
			{ name = "Terminal", cmd = "fish" },
		},
	},
	cmd = "FloatermToggle",
	keys = {
		{ ";t", "<cmd>FloatermToggle<cr>", mode = { "n", "t" }, desc = "Toggle Floaterm" },
	},
}
