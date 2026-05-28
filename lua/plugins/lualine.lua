return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    options = {
      theme = "auto",
      component_separators = { left = "", right = "" },
      section_separators = { left = "", right = "" },
    },
    sections = {
      lualine_a = { { "mode", separator = { left = "" }, right_padding = 2 } },
      lualine_b = { "filename" },
      lualine_c = { "diagnostics" },
      -- lualine_c = { "%=", "filename" }, -- filename at the center of the statusline
      lualine_x = { "branch", "diff" },
      lualine_y = { "encoding", "fileformat" },
      lualine_z = {
        {
          "location",
          separator = { right = "" },
          left_padding = 2,
        },
      },
    },
    inactive_sections = {
      lualine_a = { "filename" },
      lualine_b = {},
      lualine_c = {},
      lualine_x = {},
      lualine_y = {},
      lualine_z = { "location" },
    },
  },
}
