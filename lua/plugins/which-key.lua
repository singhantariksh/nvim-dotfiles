return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    preset = "helix",
    icons = {
      mappings = false,
    },
    spec = {
      { "<leader>a", group = "Auto Session" },
      { "<leader>g", group = "Git Hunk", mode = { "n", "v" } },
      { "<leader>h", group = "Harpoon Files" },
      { "<leader>l", group = "LSP Functions" },
      { "<leader>s", group = "Search" },
      { "<leader>t", group = "Toggle" },
      { "<leader>c", group = "Color" },
      { "<leader>y", group = "Yazi" },
    },
    win = {
      border = "rounded",
    },
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
}
