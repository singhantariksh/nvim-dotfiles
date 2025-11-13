return {
  -- Mason-LSP Config [bridge between Mason and LSP config]
  "mason-org/mason-lspconfig.nvim",
  event = "VeryLazy",
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
    { "mason-org/mason.nvim", event = "VeryLazy", opts = {} },
    { "neovim/nvim-lspconfig", event = "LspAttach" },
    { "saghen/blink.cmp", event = "InsertEnter" }
  },

  config = function(_, opts)
    require("mason-lspconfig").setup(opts)

    vim.api.nvim_create_autocmd("LspAttach", {
      group = vim.api.nvim_create_augroup("UserLspConfig", {}),
      callback = function(ev)
        vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, { buffer = ev.buf, silent = true, desc = "Rename" })

        vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = ev.buf, silent = true, desc = "Hover" })

        vim.keymap.set(
          "i",
          "<C-k>",
          vim.lsp.buf.signature_help,
          { buffer = ev.buf, silent = true, desc = "Signature Help" }
        )

        vim.keymap.set("n", "<leader>sd", "<cmd>FzfLua lsp_document_diagnostics<CR>", { desc = "Search Diagnostics" })

        vim.keymap.set("n", "<leader>lf", "<cmd>FzfLua lsp_finder<CR>", { desc = "Search LSP Finder" })

        vim.keymap.set(
          "n",
          "<leader>ld",
          "<cmd>FzfLua lsp_definitions<CR>",
          { buffer = ev.buf, silent = true, desc = "Go to Definition" }
        )

        vim.keymap.set(
          "n",
          "<leader>lD",
          "<cmd>FzfLua lsp_declarations<CR>",
          { buffer = ev.buf, silent = true, desc = "Go to Declaration" }
        )

        vim.keymap.set(
          "n",
          "<leader>le",
          vim.diagnostic.open_float,
          { buffer = ev.buf, silent = true, desc = "Show Diagnostic" }
        )

        vim.keymap.set(
          "n",
          "<leader>li",
          "<cmd>FzfLua lsp_implementations<CR>",
          { buffer = ev.buf, silent = true, desc = "Go to Implementation" }
        )

        vim.keymap.set(
          "n",
          "<leader>lr",
          "<cmd>FzfLua lsp_references<CR>",
          { buffer = ev.buf, silent = true, desc = "Find References" }
        )

        vim.keymap.set(
          "n",
          "<leader>ls",
          "<cmd>FzfLua lsp_document_symbols<CR>",
          { buffer = ev.buf, silent = true, desc = "Document Symbols" }
        )

        vim.keymap.set(
          "n",
          "<leader>lS",
          "<cmd>FzfLua lsp_workspace_symbols<CR>",
          { buffer = ev.buf, silent = true, desc = "Workspace Symbols" }
        )

        vim.keymap.set(
          "n",
          "<leader>lt",
          "<cmd>FzfLua lsp_typedefs<CR>",
          { buffer = ev.buf, silent = true, desc = "Type Definition" }
        )

        vim.keymap.set(
          "n",
          "<leader>q",
          vim.diagnostic.setqflist,
          { buffer = ev.buf, silent = true, desc = "Diagnostics to Quickfix" }
        )

        vim.keymap.set(
          "n",
          "<leader>Q",
          vim.diagnostic.setloclist,
          { buffer = ev.buf, silent = true, desc = "Buffer Diagnostics to Loclist" }
        )
      end,
    })

    vim.keymap.set("n", "<leader>lq", "<cmd>FzfLua quickfix<CR>", { silent = true, desc = "Quickfix List" })

    vim.keymap.set("n", "<leader>ll", "<cmd>FzfLua loclist<CR>", { silent = true, desc = "Location List" })

    vim.keymap.set("n", "<leader>lQ", "<cmd>FzfLua quickfix_stack<CR>", { silent = true, desc = "Quickfix History" })

    vim.keymap.set("n", "<leader>lL", "<cmd>FzfLua loclist_stack<CR>", { silent = true, desc = "Quickfix History" })
  end,
}
