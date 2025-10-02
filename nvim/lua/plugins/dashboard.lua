local art = {
	"                                                     ",
	"             ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣿⣶⣿⣦⣼⣆                  ",
	"             ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦                ",
	"                   ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄              ",
	"                    ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄             ",
	"                   ⢠⣿⣿⣿⠈    ⣻⣿⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀           ",
	"            ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘  ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄           ",
	"           ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄            ",
	"          ⣠⣿⠿⠛ ⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄           ",
	"          ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇ ⠛⠻⢷⣄          ",
	"               ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆              ",
	"               ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃              ",
	"                                                     ",
}

local function with_padding(lines, top, bottom)
	local out = {}
	for _ = 1, top or 0 do
		table.insert(out, " ")
	end
	vim.list_extend(out, lines)
	for _ = 1, bottom or 0 do
		table.insert(out, " ")
	end
	return out
end

return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local db = require("dashboard")

		db.setup({
			theme = "doom",
			config = {
				header = with_padding(art, 8, 3),
				center = {
					{ icon = "  ", desc = "new file", key = "n", action = "ene" },
					{ icon = "  ", desc = "find file", key = "f", action = "Telescope find_files" },
					{ icon = "󰈭  ", desc = "find text", key = "r", action = "Telescope live_grep" },
					{ icon = "󰒲  ", desc = "lazy", key = "l", action = "Lazy" },
					{ icon = "󰩈  ", desc = "quit", key = "q", action = "qa" },
				},

				footer = function()
					local ok, lazy = pcall(require, "lazy")
					if not ok then
						return { "" }
					end
					local stats = lazy.stats()
					local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
					return {
						"",
						string.format("⚡ %d/%d plugins in %.2fms", stats.loaded, stats.count, ms),
					}
				end,
			},
			hide = { statusline = false, tabline = false, winbar = false },
		})
		vim.api.nvim_create_autocmd("FileType", {
			pattern = "dashboard",
			callback = function()
				vim.opt_local.foldenable = false
			end,
		})
	end,
}
