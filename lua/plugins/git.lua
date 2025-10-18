return {
	"lewis6991/gitsigns.nvim",
	opts = {
		signs = {
			add = { text = "+" },
			change = { text = "~" },
			delete = { text = "_" },
			topdelete = { text = "‾" },
			changedelete = { text = "≈" },
			untracked = { text = "?" },
		},
	},

	config = function(_, opts)
		require("gitsigns").setup(opts)

		local gs = require("gitsigns")

		-- Hunk Navigation
		vim.keymap.set("n", "]g", gs.next_hunk, { silent = true, noremap = true, desc = "Next Git Hunk" })
		vim.keymap.set("n", "[g", gs.prev_hunk, { silent = true, noremap = true, desc = "Previous Git Hunk" })

		-- Hunk Actions
		vim.keymap.set("n", "<leader>gs", gs.stage_hunk, { silent = true, noremap = true, desc = "Stage Git Hunk" })
		vim.keymap.set("n", "<leader>gu", gs.undo_stage_hunk, { silent = true, noremap = true, desc = "Unstage Git Hunk" })
		vim.keymap.set("n", "<leader>gr", gs.reset_hunk, { silent = true, noremap = true, desc = "Reset Git Hunk" })
		vim.keymap.set("n", "<leader>gp", gs.preview_hunk, { silent = true, noremap = true, desc = "Preview Git Hunk" })
		vim.keymap.set("n", "<leader>gb", gs.blame_line, { silent = true, noremap = true, desc = "Git Blame Line" })

		vim.keymap.set("n", "<leader>gB", function()
			gs.blame_line({ full = true })
		end, {silent = true, noremap = true, desc = "Full Git Blame"})

		vim.keymap.set("n", "<leader>gd", gs.toggle_word_diff, { silent = true, noremap = true, desc = "Toggle Word Diff" })

		-- Hunk / Buffer Actions
		vim.keymap.set("n", "<leader>gS", gs.stage_buffer, { silent = true, noremap = true, desc = "Stage Entire Buffer" })
		vim.keymap.set("n", "<leader>gR", gs.reset_buffer, { silent = true, noremap = true, desc = "Reset Entire Buffer" })

		-- Hunk Text Object
		vim.keymap.set({ "o", "x" }, "ih", ":<C-U>lua require'gitsigns'.select_hunk()<CR>", { silent = true, noremap = true, desc = "Select Git Hunk" })

    -- Fzf Lua
    vim.keymap.set("n", "<leader>gf", "<cmd>FzfLua git_files<CR>", { desc = "Git Files" })
    vim.keymap.set("n", "<leader>gt", "<cmd>FzfLua git_status<CR>", { desc = "Git Status" })
    vim.keymap.set("n", "<leader>gc", "<cmd>FzfLua git_commits<CR>", { desc = "Git Commits (Project)" })
    vim.keymap.set("n", "<leader>gC", "<cmd>FzfLua git_bcommits<CR>", { desc = "Git Commits (Buffer)" })
	
  end,
}
