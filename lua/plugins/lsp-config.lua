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
      local key_opts = { buffer = bufnr, silent = true }

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, key_opts)
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, key_opts)
      vim.keymap.set('n', 'gr', vim.lsp.buf.references, key_opts)
      vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, key_opts)
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, key_opts)
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
