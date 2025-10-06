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
	keys = {
		{
			"<leader>e",
			":Neotree filesystem right toggle<CR>",
			desc = "Browse File system (right)",
		},
		{
			"<leader>b",
			":Neotree filesystem float<CR>",
			desc = "Browse File system (float)",
		},
	},
}
