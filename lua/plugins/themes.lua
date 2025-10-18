return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	opts = {
		terminal_colors = true,
		sidebars = "transparent",
		floats = "transparent",

		on_highlights = function(hl, colors)
			-- Make TreesitterContext darker than normal background
			hl.TreesitterContext = {
				bg = colors.bg_dark,
			}

			hl.TreesitterContextBottom = {
				bg = colors.bg_dark,
				underline = true,
				sp = colors.bg_highlight,
			}
		end,
	},

	config = function(_, opts)
		require("tokyonight").setup(opts)
		vim.cmd("colorscheme tokyonight-night")
		-- vim.cmd("colorscheme tokyonight-moon")
	end,
}
