return {
  "uga-rosa/ccc.nvim",
  event = { "BufReadPre", "BufNewFile" },
  keys = {
    { "<leader>cp", "<cmd>CccPick<cr>", desc = "Pick color" },
    { "<leader>cc", "<cmd>CccConvert<cr>", desc = "Convert color format" },
    { "<leader>ch", "<cmd>CccHighlighterToggle<cr>", desc = "Toggle highlighter" },
  },
  opts = {
    highlighter = {
      auto_enable = true,
      lsp = true,
    },
    -- highlight_mode = "virtual",
    -- virtual_symbol = " 󱓻 ",
    -- virtual_pos = "inline-right",
    preserve = true,
    lsp = true,
    recognize = {
      input = true,
      output = true,
    },
  },
}
