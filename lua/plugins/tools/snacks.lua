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
    lazygit = { enabled = true, configure = true },
    notifier = { enabled = true },
    words = { enabled = true, modes = { "n", "c" } },
  },
  config = function(_, opts)
    Snacks = require("snacks")

    Snacks.setup(opts)

    vim.keymap.set("n", "<leader>w", function()
      Snacks.bufdelete()
    end, { silent = true, desc = "Wipe buffer" })

    vim.keymap.set("n", "<leader>tn", function()
      Snacks.notifier.show_history()
    end, { silent = true, desc = "Toggle notification history" })

    vim.keymap.set("n", "<leader>go", function()
      Snacks.gitbrowse()
    end, { silent = true, desc = "Open repo in browser" })

    vim.keymap.set("n", "<leader>gg", function()
      Snacks.lazygit()
    end, { silent = true, desc = "Open lazygit" })
  end,
}
