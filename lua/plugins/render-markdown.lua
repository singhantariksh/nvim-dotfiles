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
      icons = { "󰲡 ", "󰲢 ", "󰲥 ", "󰲦 ", "󰲩 ", "󰲪 " },
      width = "block",
      left_pad = 0,
      right_pad = 1,
    },
    win_options = {
      conceallevel = {
        default = 2,
        rendered = 2,
      },
    },
    checkbox = {
      render_mode = true,
      unchecked = {
        icon = " ",
        highlight = "RenderMarkdownUnchecked",
        scope_highlight = nil,
      },
      checked = {
        icon = " ",
        highlight = "RenderMarkdownChecked",
        scope_highlight = nil,
      },
      custom = {
        canceled = { raw = "[-]", rendered = "󰜺 ", highlight = "ErrorMsg" },
        todo = { raw = "[/]", rendered = "󰦖 ", highlight = "Keyword" },
        forwarded = { raw = "[>]", rendered = " ", highlight = "Identifier" },
        scheduled = { raw = "[<]", rendered = " ", highlight = "DiagnosticHint" },
        important = { raw = "[!]", rendered = " ", highlight = "Constant" },
        question = { raw = "[?]", rendered = " ", highlight = "@string.regexp" },
        star = { raw = "[*]", rendered = " ", highlight = "WarningMsg" },
      },
    },
  },

  keys = {
    {
      "<leader>tm",
      "<cmd>RenderMarkdown toggle<CR>",
      desc = "Toggle markdown preview",
    },
  },
}
