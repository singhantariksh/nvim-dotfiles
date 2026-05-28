return {
  "eero-lehtinen/oklch-color-picker.nvim",
  event = "BufReadPost",
  version = "*",
  keys = {
    {
      "<leader>pc",
      function()
        require("oklch-color-picker").pick_under_cursor()
      end,
      desc = "pick color under cursor",
    },
    {
      "<leader>pi",
      function()
        require("oklch-color-picker").open_picker()
      end,
      desc = "palette color insert",
    },
    {
      "<leader>tc",
      function()
        require("oklch-color-picker").highlight.toggle()
      end,
      desc = "Toggle color highlight",
    },
  },
  opts = {
    highlight = {
      enabled = true,
      -- style = "foreground+virtual_left",
      style = "background",
      -- virtual_text = "  ",
      -- emphasis = false,
    },
  },
}
