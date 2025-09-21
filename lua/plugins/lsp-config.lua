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
    }
  },
  dependencies = {
    { "mason-org/mason.nvim", opts = {} },
    "neovim/nvim-lspconfig",
    "saghen/blink.cmp",
  },

  config = function(_, opts)
    require("mason-lspconfig").setup(opts)
    local capabilities = require('blink.cmp').get_lsp_capabilities()

    local on_attach = function(_, bufnr)

      vim.keymap.set('n', 'gh', vim.lsp.buf.hover, { buffer = bufnr, silent = true, desc = "Global Hover" })
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = bufnr, silent = true, desc = "Global Definition"})
      vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { buffer = bufnr, silent = true, desc = "Rename" })
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { buffer = bufnr, silent = true, desc = "Code Action"})
    end

    for _, server_name in ipairs(opts.ensure_installed) do
      vim.lsp.enable(server_name)
      vim.lsp.config(server_name, {
        on_attach = on_attach,
        capabilities = capabilities,
      })
    end
  end
}
