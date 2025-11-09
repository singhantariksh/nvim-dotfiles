return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons", "folke/snacks.nvim" },
  config = function()
    local fzf = require("fzf-lua")
    require("fzf-lua").register_ui_select()

    fzf.setup({
      winopts = {
        height = 0.85,
        width = 0.80,
        row = 0.35,
        col = 0.50,
        preview = {
          layout = "horizontal",
          horizontal = "right:50%",
        },
      },
      keymap = {
        builtin = {
          ["<C-d>"] = "preview-page-down",
          ["<C-u>"] = "preview-page-up",
        },
      },
      files = {
        prompt = "Files❯ ",
        git_icons = true,
        file_icons = true,
        color_icons = true,
      },
      grep = {
        prompt = "Grep❯ ",
        input_prompt = "Grep For❯ ",
      },
      lsp = {
        prompt_postfix = "❯ ",
        cwd_only = false,
        async_or_timeout = 5000,
      },
    })

    vim.keymap.set("n", "<leader>sc", fzf.commands, { desc = "Search Commands" })
    vim.keymap.set("n", "<leader>sf", fzf.files, { desc = "Search Files" })
    vim.keymap.set("n", "<leader>sg", fzf.live_grep, { desc = "Search by Grep" })
    vim.keymap.set("n", "<leader>sh", fzf.helptags, { desc = "Search Help" })
    vim.keymap.set("n", "<leader>sk", fzf.keymaps, { desc = "Search Keymaps" })
    vim.keymap.set("n", "<leader>sr", fzf.resume, { desc = "Search Resume" })
    vim.keymap.set("n", "<leader>ss", fzf.builtin, { desc = "Search Select FZF" })
    vim.keymap.set("n", "<leader>sw", fzf.grep_cword, { desc = "Search current Word" })
    vim.keymap.set("n", "<leader>s.", fzf.oldfiles, { desc = 'Search Recent Files ("." for repeat)' })
    vim.keymap.set("n", "<leader><leader>", fzf.buffers, { desc = "[ ] Find existing buffers" })

    vim.keymap.set("n", "<leader>/", fzf.blines, { desc = "[/] Fuzzily search in current buffer" })

    vim.keymap.set("n", "<leader>s/", function()
      fzf.live_grep({
        prompt = "Live Grep in Open Buffers❯ ",
        no_header = false,
        fzf_opts = { ["--header"] = "Searching in open buffers" },
        cwd = nil,
        buffers = true,
      })
    end, { desc = "Search [/] in Open Files" })

    vim.keymap.set("n", "<leader>sn", function()
      fzf.files({ cwd = vim.fn.stdpath("config") })
    end, { desc = "Search Neovim files" })
  end,
}
