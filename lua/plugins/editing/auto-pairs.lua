return {
  {
    "altermo/ultimate-autopair.nvim",
    event = { "BufReadPre", "BufNewFile" },
    branch = "v0.6",
    opts = {
      --fastwarp = Alt + e
      --fastwwarp reverse = Alt + E
      --{(|)} > fastwarp > {(}|)

      extensions = {
        tsnode = {
          separate = { "string", "comment" },
        },
        alpha = {
          filter = true,
        },
      },
    },
  },

  -- press tab to jump out of treesitter nodes (complements autopair)
  {
    {
      "abecodes/tabout.nvim",
      event = { "BufReadPre", "BufNewFile" },
      config = function()
        require("tabout").setup({
          tabkey = "<A-o>",
          backwards_tabkey = "<A-S-o>",
          act_as_tab = false,
          act_as_shift_tab = false,
          default_tab = "<C-t>",
          default_shift_tab = "<C-d>",
          enable_backwards = true,
          completion = false,
          tabouts = {
            { open = "'", close = "'" },
            { open = '"', close = '"' },
            { open = "`", close = "`" },
            { open = "(", close = ")" },
            { open = "[", close = "]" },
            { open = "{", close = "}" },
          },
          ignore_beginning = true,
          exclude = {},
        })
      end,
      opt = true,
      priority = 1000,
    },
  },

  -- autotag to also complement autopair
  {
    "windwp/nvim-ts-autotag",
    event = { "BufReadPre", "BufNewFile" },
    opts = {
      opts = {
        enable_close = true,
        enable_rename = true,
        enable_close_on_slash = true,
      },
    },
  },
}
