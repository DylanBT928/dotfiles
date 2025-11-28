return {
	"echasnovski/mini.hipatterns",
	event = { "BufReadPre", "BufNewFile" },
	opts = function()
		local hipatterns = require("mini.hipatterns")
		return {
			highlighters = {
				-- Standalone words
				fixme = { pattern = "%f[%w]()FIXME()%f[%W]", group = "MiniHipatternsFixme" },
				hack = { pattern = "%f[%w]()HACK()%f[%W]", group = "MiniHipatternsHack" },
				todo = { pattern = "%f[%w]()TODO()%f[%W]", group = "MiniHipatternsTodo" },
				note = { pattern = "%f[%w]()NOTE()%f[%W]", group = "MiniHipatternsNote" },

				-- Hex colors (#rrggbb / #rgb)
				hex_color = hipatterns.gen_highlighter.hex_color(),
			},
		}
	end,
}
