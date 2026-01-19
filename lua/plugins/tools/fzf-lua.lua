return {
  "ibhagwan/fzf-lua",
  cmd = { "FzfLua" },
  dependencies = { "nvim-tree/nvim-web-devicons", "folke/snacks.nvim" },

  keys = {
    { "<leader>sc", "<cmd>FzfLua commands<cr>", desc = "Search Commands" },
    { "<leader>sd", "<cmd>FzfLua lsp_document_diagnostics<cr>", desc = "Search Diagnostics (file)" },
    { "<leader>sD", "<cmd>FzfLua lsp_workspace_diagnostics<cr>", desc = "Search Diagnostics (project)" },
    { "<leader>sf", "<cmd>FzfLua files<cr>", desc = "Search Files" },
    { "<leader>sg", "<cmd>FzfLua live_grep<cr>", desc = "Search by Grep" },
    { "<leader>sh", "<cmd>FzfLua helptags<cr>", desc = "Search Help" },
    { "<leader>sk", "<cmd>FzfLua keymaps<cr>", desc = "Search Keymaps" },
    { "<leader>sl", "<cmd>FzfLua loclist<cr>", desc = "Location List" },
    { "<leader>sL", "<cmd>FzfLua loclist_stack<cr>", desc = "Location List History" },
    { "<leader>sq", "<cmd>FzfLua quickfix<cr>", desc = "Quickfix List" },
    { "<leader>sQ", "<cmd>FzfLua quickfix_stack<cr>", desc = "Quickfix History" },
    { "<leader>sr", "<cmd>FzfLua resume<cr>", desc = "Search Resume" },
    { "<leader>ss", "<cmd>FzfLua builtin<cr>", desc = "Search Select FZF" },
    { "<leader>sw", "<cmd>FzfLua grep_cword<cr>", desc = "Search current Word" },
    { "<leader>s.", "<cmd>FzfLua oldfiles<cr>", desc = 'Search Recent Files ("." for repeat)' },
    { "<leader><leader>", "<cmd>FzfLua buffers<cr>", desc = "[ ] Find existing buffers" },
    { "<leader>/", "<cmd>FzfLua blines<cr>", desc = "[/] Fuzzy search in current buffer" },
    {
      "<leader>s/",
      function()
        require("fzf-lua").live_grep({
          prompt = "Live Grep in Open Buffers❯ ",
          no_header = false,
          fzf_opts = { ["--header"] = "Searching in open buffers" },
          cwd = nil,
          buffers = true,
        })
      end,
      desc = "Search [/] in Open Files",
    },
    {
      "<leader>sn",
      function()
        require("fzf-lua").files({
          cwd = vim.fn.stdpath("config"),
        })
      end,
      desc = "Search Neovim files",
    },
    {
      "<leader>sv",
      function()
        require("fzf-lua").files({
          cwd = "~/Vault/",
        })
      end,
      desc = "Search Obsidian Vault files",
    },
  },

  opts = {

    -- file_ignore_patterns = { "" },

    oldfiles = {
      include_current_session = true,
    },

    winopts = {
      height = 0.85,
      width = 0.80,
      row = 0.35,
      col = 0.50,
      preview = {
        layout = "horizontal",
        horizontal = "right:50%",
      },
    },

    keymap = {
      builtin = {
        ["<C-d>"] = "preview-page-down",
        ["<C-u>"] = "preview-page-up",
      },
    },

    files = {
      prompt = "Files❯ ",
      git_icons = true,
      file_icons = true,
      color_icons = true,
    },

    grep = {
      prompt = "Grep❯ ",
      input_prompt = "Grep For❯ ",
    },

    lsp = {
      prompt_postfix = "❯ ",
      cwd_only = false,
      async_or_timeout = 5000,
    },
  },

  config = function(_, opts)
    local fzf = require("fzf-lua")
    fzf.setup(opts)
    fzf.register_ui_select()
  end,
}
