return {
	"folke/which-key.nvim",
	event = "VimEnter",
	opts = {
		spec = {
			{ "<leader>s", group = "Search" },
			{ "<leader>g", group = "Git Hunk", mode = { "n", "v" } },
			{ "<leader>c", group = "Code Diagnostics" },
			{ "<leader>h", group = "Harpoon Files" },
			{ "<leader>a", group = "Auto Session" },
		},
	},
	keys = {
		{
			"<leader>?",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "Buffer Local Keymaps (which-key)",
		},
	},
}
