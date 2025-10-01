return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	lazy = false,
	opts = {
		window = {
			position = "right",
		},
	},
	config = function()
		vim.keymap.set(
			"n",
			"<C-b>",
			":Neotree filesystem right toggle<CR>",
			{ silent = true, noremap = true, desc = "Browse File system" }
		)
    vim.keymap.set(
			"n",
			"<leader>b",
			":Neotree filesystem float<CR>",
			{ silent = true, noremap = true, desc = "Browse File system" }
		)
	end,
}
