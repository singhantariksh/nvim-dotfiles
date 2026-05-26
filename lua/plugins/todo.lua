return {
  "folke/todo-comments.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {},

  config = function(_, opts)
    require("todo-comments").setup(opts)

    vim.keymap.set("n", "<leader>st", ":TodoFzfLua<CR>", { desc = "Search Todos" })

    vim.keymap.set("n", "]t", function()
      require("todo-comments").jump_next()
    end, { desc = "Next todo comment" })
    vim.keymap.set("n", "[t", function()
      require("todo-comments").jump_prev()
    end, { desc = "Previous todo comment" })
  end
}
