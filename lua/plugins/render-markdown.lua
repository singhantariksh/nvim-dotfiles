return {
  "MeanderingProgrammer/render-markdown.nvim",
  ft = { "markdown", "mdx", "vimwiki" },
  dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },
  opts = {
    file_types = { "markdown", "mdx", "vimwiki" },
    code = {
      sign = false,
      width = "block",
      right_pad = 4,
      position = "right",
    },
    heading = {
      sign = false,
      width = "block",
      left_pad = 2,
      right_pad = 4,
    },
    checkbox = {
      render_mode = true,
    },
    win_options = {
      conceallevel = {
        default = 1,
        rendered = 1,
      },
    },
  },

  keys = {
    {
      "<leader>tm",
      "<cmd>RenderMarkdown toggle<CR>",
      desc = "Toggle Markdown Preview",
    },
  },
}
