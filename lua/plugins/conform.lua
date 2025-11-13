local prettier_opts = { "prettierd", "prettier", stop_after_first = true }

return {
	"stevearc/conform.nvim",
  cmd = "ConformInfo",
	opts = {
		formatters_by_ft = {
			-- Lua
			lua = { "stylua" },

			-- C/C++
			c = { "clang-format" },
			cpp = { "clang-format" },

			-- C#
			cs = { "csharpier" },

			-- Python
			python = { "isort", "black" },

			-- Java
			java = { "google-java-format" },

			-- Rust
			rust = { "rustfmt" },

			-- Web
			javascript = prettier_opts,
			javascriptreact = prettier_opts,
			typescript = prettier_opts,
			typescriptreact = prettier_opts,
			html = prettier_opts,
			css = prettier_opts,

			-- SQL
			sql = { "sqlfmt" },

			-- Mongo (JS/JSON format)
			mongodb = prettier_opts,

			-- Other
			go = { "gofmt" },
			sh = { "shfmt" },
			toml = { "taplo" },
			yaml = prettier_opts,
			json = prettier_opts,
			xml = prettier_opts,
			markdown = prettier_opts,
		},
	},

	config = function(_, opts)
		require("conform").setup(opts)
	end,

	keys = {
		{
			"<leader>f",
			function()
				require("conform").format({ async = true, lsp_fallback = true })
			end,
			desc = "Format file",
			mode = "n",
		},
		{
			"<leader>f",
			function()
				local start_line = vim.fn.line("'<")
				local end_line = vim.fn.line("'>")
				require("conform").format({ range = { start_line, end_line } })
			end,
			desc = "[F]ormat selection",
			mode = "v",
		},
	},
}
