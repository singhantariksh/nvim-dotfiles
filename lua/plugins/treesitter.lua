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
        multiline_threshold = 1,
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

    vim.keymap.set("n", "<leader>t", "<cmd>TSContext toggle<CR>", { desc = "Toggle Treesitter Context" })
  end,
}
