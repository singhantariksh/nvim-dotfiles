return {
	-- Mason-LSP Config [bridge between Mason and LSP config]
	"mason-org/mason-lspconfig.nvim",
	opts = {
		ensure_installed = {
			"lua_ls",
			"clangd",
			"pyright",
			"omnisharp",
			"ts_ls",
			"jsonls",
			"html",
			"cssls",
			"jdtls",
			"sqlls",
		},
	},
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		"neovim/nvim-lspconfig",
		"saghen/blink.cmp",
	},

	config = function(_, opts)
		require("mason-lspconfig").setup(opts)
		local capabilities = require("blink.cmp").get_lsp_capabilities()

		local on_attach = function(_, bufnr)
			vim.keymap.set("n", "<leader>l", "<cmd>FzfLua lsp_finder<CR>", { buffer = bufnr, silent = true, desc = "LSP Finder" })
			vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, { buffer = bufnr, silent = true, desc = "Rename" })
		end

		for _, server_name in ipairs(opts.ensure_installed) do
			vim.lsp.enable(server_name)
			vim.lsp.config(server_name, {
				on_attach = on_attach,
				capabilities = capabilities,
			})
		end
	end,
}
