return {
  "rmagatti/auto-session",
  lazy = false,
  opts = {
    log_level = "error",
    auto_session_enable_last_session = false,
    auto_session_root_dir = vim.fn.stdpath("data") .. "/sessions/",
    auto_session_enabled = true,
    auto_save_enabled = true,
    auto_restore_enabled = true,
    auto_session_suppress_dirs = { "~/", "~/Downloads", "/" },
    auto_session_use_git_branch = true,

    session_lens = {
      buftypes_to_ignore = {},
      load_on_setup = true,
      theme_conf = { border = true },
      previewer = false,
    },

    -- Got this from https://github.com/rmagatti/auto-session/issues/433
    -- pre_restore_cmds = {
    --   function()
    --     require("harpoon"):sync()
    --   end,
    -- },
    -- post_restore_cmds = {
    --   function()
    --     local harpoon = require("harpoon")
    --     harpoon.data = require("harpoon.data").Data:new(harpoon.config)
    --   end,
    -- },
  },

  config = function(_, opts)
    require("auto-session").setup(opts)

    vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
    vim.keymap.set("n", "<leader>as", "<cmd>AutoSession search<CR>", { desc = "Search sessions" })
  end,
}
