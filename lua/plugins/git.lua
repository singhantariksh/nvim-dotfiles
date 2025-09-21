return {
	"lewis6991/gitsigns.nvim",
	config = function()
		opts = {}

		local gs = require("gitsigns")

		-- [H]unk Navigation
		vim.keymap.set("n", "]c", gs.next_hunk, { silent = true, noremap = true, desc = "Next Git Hunk" })
		vim.keymap.set("n", "[c", gs.prev_hunk, { silent = true, noremap = true, desc = "Previous Git Hunk" })

		-- [H]unk Actions
		vim.keymap.set("n", "<leader>hs", gs.stage_hunk, { silent = true, noremap = true, desc = "Stage Git Hunk" })
		vim.keymap.set(
			"n",
			"<leader>hu",
			gs.undo_stage_hunk,
			{ silent = true, noremap = true, desc = "Unstage Git Hunk" }
		)
		vim.keymap.set("n", "<leader>hr", gs.reset_hunk, { silent = true, noremap = true, desc = "Reset Git Hunk" })
		vim.keymap.set("n", "<leader>hp", gs.preview_hunk, { silent = true, noremap = true, desc = "Preview Git Hunk" })
		vim.keymap.set("n", "<leader>hb", gs.blame_line, { silent = true, noremap = true, desc = "Git Blame Line" })
		vim.keymap.set("n", "<leader>hB", function()
			gs.blame_line({ full = true })
		end, { silent = true, noremap = true, desc = "Full Git Blame" })
		vim.keymap.set(
			"n",
			"<leader>hd",
			gs.toggle_word_diff,
			{ silent = true, noremap = true, desc = "Toggle Word Diff" }
		)

		-- [H]unk / Buffer Actions
		vim.keymap.set(
			"n",
			"<leader>hS",
			gs.stage_buffer,
			{ silent = true, noremap = true, desc = "Stage Entire Buffer" }
		)
		vim.keymap.set(
			"n",
			"<leader>hR",
			gs.reset_buffer,
			{ silent = true, noremap = true, desc = "Reset Entire Buffer" }
		)

		-- [H]unk Text Object
		vim.keymap.set(
			{ "o", "x" },
			"ih",
			":<C-U>lua require'gitsigns'.select_hunk()<CR>",
			{ silent = true, noremap = true, desc = "Select Git Hunk" }
		)
	end,
}
