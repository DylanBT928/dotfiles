return {
	"saghen/blink.cmp",
	version = "1.*",
	dependencies = {
		"L3MON4D3/LuaSnip",
		"rafamadriz/friendly-snippets",
	},
	event = { "InsertEnter", "CmdlineEnter" },
	opts = function()
		return {
			keymap = { preset = "super-tab" },
			appearance = { nerd_font_variant = "mono" },
			completion = {
				documentation = { auto_show = false },
				ghost_text = { enabled = true },
				menu = { auto_show = true },
			},
			sources = {
				default = { "path", "snippets", "buffer" },
			},
			snippets = { preset = "luasnip" },
			signature = { enabled = false },
			cmdline = {
				keymap = { preset = "inherit" },
				completion = { menu = { auto_show = true } },
			},
			fuzzy = { implementation = "prefer_rust_with_warning" },
		}
	end,
	config = function(_, opts)
		require("blink.cmp").setup(opts)
	end,
}
