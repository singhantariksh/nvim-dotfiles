return {
	"OXY2DEV/markview.nvim",
	version = "v26.*",
	dependencies = {
		"saghen/blink.cmp",
		"nvim-tree/nvim-web-devicons",
	},

	config = function()
		local presets = require("markview.presets")

		require("markview").setup({
			preview = {
				icon_provider = "devicons",
			},
			markdown = {
				headings = presets.headings.glow,
				tables = presets.tables.rounded,
			},
		})

		vim.keymap.set("n", "<C-m>", ":Markview<CR>", { desc = "Toggle Markdown Preview" })
	end,
}
