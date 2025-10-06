return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	opts = {
		terminal_colors = true,
		sidebars = "transparent",
		floats = "transparent",
	},

	config = function(_, opts)
		require("tokyonight").setup(opts)
		-- vim.cmd("colorscheme tokyonight-night")
		vim.cmd("colorscheme tokyonight-moon")
	end,
}
