return {
  "danymat/neogen",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  opts = {
    snippet_engine = "luasnip",
  },
  keys = {
    {
      "<leader>cg",
      function()
        require("neogen").generate()
      end,
      desc = "Code neoGen",
    },
  },
}
