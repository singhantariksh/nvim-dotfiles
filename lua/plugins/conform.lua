local prettier_opts = { "prettierd", "prettier", stop_after_first = true }

return {
	"stevearc/conform.nvim",

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
      java = { "google_java_format" },

			-- Rust
			rust = { "rustfmt" },

			-- Web
			javascript = { prettier_opts },
			javascriptreact = { prettier_opts },
			typescript = { prettier_opts },
			typescriptreact = { prettier_opts },
			html = { prettier_opts },
			css = { prettier_opts },

			-- SQL
			sql = { "sql_formatter" },

			-- Mongo (JS/JSON format)
			mongodb = { prettier_opts },

			-- Other
			go = { "gofmt" },
			sh = { "shfmt" },
			toml = { "taplo" },
			yaml = { prettier_opts },
			json = { prettier_opts },
			xml = { prettier_opts },
			markdown = { prettier_opts },
		},
	},

	config = function()
		vim.keymap.set("n", "<leader>f", function()
			require("conform").format({ async = true, lsp_fallback = true })
		end, { desc = "[F]ormat file" })

		vim.keymap.set("v", "<leader>f", function()
			local start_line = vim.fn.line("'<")
			local end_line = vim.fn.line("'>")
			require("conform").format({ range = { start_line, end_line } })
		end, { desc = "[F]ormat selection" })
	end,
}
