return {
  "mikavilpas/yazi.nvim",
  version = "*",
  event = "BufEnter",
  dependencies = {
    { "nvim-lua/plenary.nvim", lazy = true },
  },

  keys = {
    {
      "<leader>yy",
      mode = { "n", "v" },
      "<cmd>Yazi<cr>",
      desc = "Open yazi: current file",
    },
    {
      "<leader>yw",
      "<cmd>Yazi cwd<cr>",
      desc = "Open yazi: current working directory",
    },
    {
      "<leader>yt",
      "<cmd>Yazi toggle<cr>",
      desc = "Open yazi: continue last session",
    },
  },

  opts = {
    open_for_directories = true,

    keymaps = {
      open_file_in_horizontal_split = "<c-h>",
    },

    integrations = {
      grep_in_directory = function(directory)
        require("fzf-lua").live_grep({
          cwd = directory,
        })
      end,
    },
  },

  init = function()
    vim.g.loaded_netrwPlugin = 1
  end,
}
