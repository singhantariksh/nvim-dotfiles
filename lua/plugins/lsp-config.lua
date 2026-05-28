return {
  -- Mason-LSP Config [bridge between Mason and LSP config]
  "mason-org/mason-lspconfig.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    ensure_installed = {
      "clangd",
      "cssls",
      "harper_ls",
      "html",
      "jdtls",
      "lua_ls",
      "jsonls",
      "lua_ls",
      "omnisharp",
      "pyright",
      "qmlls",
      "sqlls",
      "stylua",
      "taplo",
      "ts_ls",
    },
    automatic_enable = {
      exclude = { "harper_ls" },
    },
  },
  dependencies = {
    { "mason-org/mason.nvim", event = "VeryLazy", opts = {} },
    { "neovim/nvim-lspconfig", event = "LspAttach" },
    { "saghen/blink.cmp", event = "InsertEnter" },
  },

  config = function(_, opts)
    require("mason-lspconfig").setup(opts)

    vim.lsp.config("harper_ls", {
      settings = {
        ["harper-ls"] = {
          linters = {
            SentenceCapitalization = false,
            SpellCheck = false,
          },
        },
      },
    })

    vim.api.nvim_create_autocmd("LspAttach", {
      group = vim.api.nvim_create_augroup("UserLspConfig", {}),
      callback = function(ev)
        local map = function(keys, func, desc)
          vim.keymap.set("n", keys, func, { buffer = ev.buf, silent = true, desc = desc })
        end

        -- replaced by inc-rename plugin
        -- vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, { buffer = ev.buf, silent = true, desc = "Rename" })

        map("K", vim.lsp.buf.hover, "Hover")

        vim.keymap.set(
          "i",
          "<C-k>",
          vim.lsp.buf.signature_help,
          { buffer = ev.buf, silent = true, desc = "Signature Help" }
        )
        map("<leader>q", vim.diagnostic.setqflist, "Diagnostics to Quickfix")

        map("<leader>Q", vim.diagnostic.setloclist, "Buffer Diagnostics to Loclist")

        map("<leader>ca", "<cmd>FzfLua lsp_code_actions<CR>", "Code actions")

        map("<leader>cd", vim.diagnostic.open_float, "Code Diagnostic")

        map("gd", "<cmd>FzfLua lsp_definitions<CR>", "Goto Definition")

        map("gD", "<cmd>FzfLua lsp_declarations<CR>", "Goto Declaration")

        map("gI", "<cmd>FzfLua lsp_implementations<CR>", "Goto Implementation")

        map("gR", "<cmd>FzfLua lsp_references<CR>", "Goto References")

        map("gy", "<cmd>FzfLua lsp_typedefs<CR>", "Goto Type Definition")

        map("<leader>ll", "<cmd>FzfLua lsp_finder<CR>", "Search LSP Finder")

        map("<leader>ls", "<cmd>FzfLua lsp_document_symbols<CR>", "Document Symbols")

        map("<leader>lS", "<cmd>FzfLua lsp_workspace_symbols<CR>", "Workspace Symbols")
      end,
    })
  end,
}
