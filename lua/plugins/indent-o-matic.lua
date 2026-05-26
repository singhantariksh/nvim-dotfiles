return {
  "Darazaki/indent-o-matic",
  event = "BufReadPre",
  opts = {
    max_lines = 2048,
    standard_widths = { 2, 4, 8 },
    skip_multiline = true,
  },
  config = function(_, opts)
    require("indent-o-matic").setup(opts)
    vim.api.nvim_clear_autocmds({ group = "indent_o_matic" })
  end,
}
