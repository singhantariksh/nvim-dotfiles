return {
	{
		"sainnhe/gruvbox-material",
		name = "gruvbox-material",
		lazy = false,
		priority = 1000,
		config = function()
			vim.g.gruvbox_material_better_performance = true
			vim.g.gruvbox_material_enable_italic = true
			vim.g.gruvbox_material_enable_bold = true
			vim.g.gruvbox_material_transparent_background = true
			vim.g.gruvbox_material_foreground = "mix"
			vim.g.gruvbox_material_background = "hard"
			vim.g.gruvbox_material_ui_contrast = "high"
			vim.g.gruvbox_material_float_style = "none"

			vim.cmd.colorscheme('gruvbox-material')
		end,
	},
	-- {
	-- 	"sainnhe/edge",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		vim.g.edge_disable_italic_comment = true
	-- 		vim.g.edge_enable_italic = false
	-- 		vim.g.edge_enable_bold = true
	-- 		vim.g.edge_better_performance = true
	--
	-- 		-- vim.cmd.colorscheme('edge')
	-- 	end,
	-- },
	-- {
	-- 	"catppuccin/nvim",
	-- 	name = "catppuccin",
	-- 	priority = 1000,
	-- 	config = function()
	-- 		require("catppuccin").setup({
	-- 			flavour = "mocha",
	-- 			transparent_background = true,
	-- 			float = {
	-- 				transparent = true,
	-- 			},
	-- 			styles = {
	-- 				conditionals = { "italic" },
	-- 			},
	-- 		})
	-- 		-- vim.cmd.colorscheme("catppuccin")
	-- 	end,
	-- },
}
