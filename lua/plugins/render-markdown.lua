return {
	"MeanderingProgrammer/render-markdown.nvim",
	dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },
	opts = {
		file_types = { "markdown" },
		code = {
			sign = false,
			width = "block",
			right_pad = 4,
			position = "right",
		},
		heading = {
			sign = false,
			width = "block",
			left_pad = 2,
			right_pad = 4,
		},
	},

	config = function(_, opts)
		vim.api.nvim_create_autocmd("FileType", {
			pattern = "markdown",
			callback = function()
				require("render-markdown").setup(opts)

				vim.keymap.set(
					"n",
					"<C-m>",
					"<cmd>RenderMarkdown toggle<CR>",
					{ buffer = true, desc = "Toggle Markdown Preview" }
				)
			end,
		})
	end,
}
