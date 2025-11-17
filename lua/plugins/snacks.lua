return {
  "folke/snacks.nvim",
  priority = 1000,
  event = "VeryLazy",
  opts = {
    bigfile = { enabled = true },
    bufdelete = { enabled = true },
    gitbrowse = { enabled = true },
    image = {
      enabled = true,
      math = {
        enabled = false,
      },
      formats = {
        "png",
        "jpg",
        "jpeg",
        "gif",
        "bmp",
        "webp",
        "tiff",
        "heic",
        "avif",
        "mp4",
        "mov",
        "avi",
        "mkv",
        "webm",
        "pdf",
        "icns",
        "ico",
        "svg",
      },
    },
    indent = { enabled = true },
    input = { enabled = true },
    -- notifier = { enabled = true },
    words = { enabled = true, modes = { "n", "c" } },
  },
  config = function(_, opts)
    require("snacks").setup(opts)

    Snacks = require("snacks")

    vim.keymap.set("n", "<leader>w", function()
      Snacks.bufdelete()
    end, { silent = true, desc = "Wipe buffer" })

    -- vim.keymap.set("n", "<leader>nh", function()
    --   Snacks.notifier.show_history()
    -- end, {})

    vim.keymap.set("n", "<leader>go", function()
      Snacks.gitbrowse()
    end, { silent = true, desc = "Open in browser" })
  end,
}
