return {
  "nvim-treesitter/nvim-treesitter",
  branch = "master",
  build = ":TSUpdate",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    { "nvim-treesitter/nvim-treesitter-textobjects", event = "VeryLazy" },
    {
      "nvim-treesitter/nvim-treesitter-context",
      event = "BufReadPost",
      opts = {
        enable = true,
        max_lines = 2, -- How many lines the window should span. Values <= 0 mean no limit.
        multiline_threshold = 1, -- Maximum number of lines to show for a single context
        trim_scope = "inner", -- Which context lines to discard if `max_lines` is exceeded. 'inner' | 'outer'
      },
    },
  },
  opts = {
    auto_install = true,
    sync_install = false,
    highlight = { enable = true },
    indent = { enable = true },
  },

  config = function(_, opts)
    local configs = require("nvim-treesitter.configs")
    configs.setup(opts)

    vim.keymap.set("n", "<leader>tt", "<cmd>TSContext toggle<CR>", { desc = "Toggle treesitter context" })
  end,
}
