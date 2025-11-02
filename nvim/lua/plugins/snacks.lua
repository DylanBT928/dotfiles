return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	opts = {
		animate = { enabled = true },
		bigfile = { enabled = false },
		bufdelete = { enabled = true },
		dashboard = { enabled = false },
		debug = { enabled = false },
		dim = { enabled = false },
		explorer = { enabled = true, replace_netrw = true },
		git = { enabled = false },
		gitbrowse = { enabled = false },
		image = {
			enabled = true,
			backend = "auto",
			formats = {
				"png",
				"jpg",
				"jpeg",
				"gif",
				"bmp",
				"webp",
				"tiff",
				"heic",
				"avif",
				"mp4",
				"mov",
				"avi",
				"mkv",
				"webm",
				"pdf",
			},
			max_width = 80,
			max_height = 40,
			integrations = {
				markdown = {
					enabled = true,
					clear_in_insert_mode = true,
					download_remote_images = false,
				},
			},
		},
		indent = { enabled = true },
		input = { enabled = true },
		layout = { enabled = false },
		lazygit = { enabled = true },
		notifier = { enabled = true },
		notify = { enabled = false },
		picker = { enabled = true },
		profiler = { enabled = true },
		quickfile = { enabled = false },
		rename = { enabled = false },
		scope = { enabled = false },
		scratch = { enabled = false },
		scroll = {
			enabled = true,
			animate = {
				duration = { step = 15, total = 250 },
				easing = "linear",
			},
			animate_repeat = {
				delay = 100,
				duration = { step = 5, total = 50 },
				easing = "linear",
			},
			filter = function(buf)
				return vim.g.snacks_scroll ~= false
					and vim.b[buf].snacks_scroll ~= false
					and vim.bo[buf].buftype ~= "terminal"
			end,
		},
		statuscolumn = {
			enabled = true,
			style = { signcolumn = "no" },
			text = "%#LineNr#%l %s%=%C",
		},
		terminal = { enabled = true },
		toggle = { enabled = false },
		util = { enabled = false },
		win = { enabled = false },
		words = { enabled = false },
		zen = { enabled = false },
	},
	keys = {
		{
			";f",
			function()
				Snacks.dashboard.pick("files")
			end,
			desc = "Find File",
		},
		{
			";r",
			function()
				Snacks.dashboard.pick("live_grep")
			end,
			desc = "Find Text",
		},
		{
			"<leader>e",
			function()
				Snacks.explorer()
			end,
			desc = "File Explorer",
		},
		{
			";g",
			function()
				Snacks.lazygit.open(opts)
			end,
			desc = "Open Lazygit",
		},
		{
			"<leader>ps",
			function()
				if Snacks.profiler and Snacks.profiler.start then
					Snacks.profiler.start({ title = "manual" })
					vim.notify("Profiler started", vim.log.levels.INFO)
				end
			end,
			desc = "Profiler: Start",
		},
		{
			"<leader>pS",
			function()
				if Snacks.profiler and Snacks.profiler.stop then
					Snacks.profiler.stop()
					vim.notify("Profiler stopped", vim.log.levels.INFO)
				end
			end,
			desc = "Profiler: Stop",
		},
		{
			"<leader>t",
			function()
				Snacks.terminal.toggle()
			end,
			desc = "Open/Close Terminal",
		},
		{
			"<leader>m",
			function()
				Snacks.toggle.get()
			end,
			desc = "Open/Close Terminal",
		},
	},
}
