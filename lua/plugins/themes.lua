return {
  {
    'sainnhe/edge',
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.edge_disable_italic_comment = true
      vim.g.edge_enable_italic = false
      vim.g.edge_enable_bold = true
      vim.g.edge_better_performance = 1
      vim.cmd.colorscheme('edge')
    end
  },
}
