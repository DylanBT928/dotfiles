return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	opts = {
		format_on_save = {
			timeout_ms = 500,
			lsp_fallback = false,
		},
		formatters_by_ft = {
			c = { "clang_format" },
			cpp = { "clang_format" },
			sh = { "shfmt" },
			bash = { "shfmt" },
			cmake = { "cmake_format" },
			json = { "prettier" },
			yaml = { "prettier" },
			lua = { "stylua" },
		},
		formatters = {
			shfmt = { prepend_args = { "-i", "2", "-ci" } },
		},
	},
}
