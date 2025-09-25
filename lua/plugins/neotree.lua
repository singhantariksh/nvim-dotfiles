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
    }
  },
	config = function()
		vim.keymap.set(
			"n",
			"<leader>bf",
			":Neotree filesystem right toggle<CR>",
			{ silent = true, noremap = true, desc = "[B]rowse: File system" }
		)

		vim.keymap.set(
			"n",
			"<leader>bb",
			":Neotree buffers float toggle<CR>",
			{ silent = true, noremap = true, desc = "[B]rowse: Buffers list" }
		)

		vim.keymap.set(
			"n",
			"<leader>bg",
			":Neotree git_status float toggle<CR>",
			{ silent = true, noremap = true, desc = "[B]rowse: Git status" }
		)
	end
}
