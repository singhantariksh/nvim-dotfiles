return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim", "ibhagwan/fzf-lua" },

  keys = {
    { "<leader>ha", desc = "Harpoon: Add file" },
    { "<leader>hh", desc = "Harpoon: Search files" },
    { "<C-1>", desc = "Harpoon: Go to file 1" },
    { "<C-2>", desc = "Harpoon: Go to file 2" },
    { "<C-3>", desc = "Harpoon: Go to file 3" },
    { "<C-4>", desc = "Harpoon: Go to file 4" },
    { "<C-5>", desc = "Harpoon: Go to file 5" },
    { "[h", desc = "Harpoon: Previous file" },
    { "]h", desc = "Harpoon: Next file" },
    { "<leader>hd", desc = "Harpoon: Remove file" },
    { "<leader>hc", desc = "Harpoon: Clear all" },
  },

  config = function()
    local harpoon = require("harpoon")
    harpoon:setup()

    local function toggle_fzf(harpoon_files)
      local file_paths = {}
      for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
      end

      require("fzf-lua").fzf_exec(file_paths, {
        prompt = "Harpoon❯ ",
        fzf_opts = {
          ["--header"] = "ENTER: Open | CTRL-D: Delete | CTRL-X: Clear All",
        },
        previewer = "builtin",
        actions = {
          ["default"] = function(selected)
            local file = selected[1]
            for idx, item in ipairs(harpoon_files.items) do
              if item.value == file then
                harpoon:list():select(idx)
                break
              end
            end
          end,
          ["ctrl-d"] = function(selected)
            local file = selected[1]
            for idx, item in ipairs(harpoon_files.items) do
              if item.value == file then
                harpoon:list():remove_at(idx)
                toggle_fzf(harpoon:list())
                break
              end
            end
          end,
          ["ctrl-x"] = function()
            harpoon:list():clear()
            vim.notify("Harpoon list cleared", vim.log.levels.INFO)
          end,
        },
      })
    end

    vim.keymap.set("n", "<leader>ha", function()
      harpoon:list():add()
      vim.notify("Added to Harpoon", vim.log.levels.INFO)
    end, { desc = "Harpoon: Add file" })

    vim.keymap.set("n", "<leader>hh", function()
      toggle_fzf(harpoon:list())
    end, { desc = "Harpoon: Search files" })

    vim.keymap.set("n", "<C-1>", function()
      harpoon:list():select(1)
    end, { desc = "Harpoon: Go to file 1" })
    vim.keymap.set("n", "<C-2>", function()
      harpoon:list():select(2)
    end, { desc = "Harpoon: Go to file 2" })
    vim.keymap.set("n", "<C-3>", function()
      harpoon:list():select(3)
    end, { desc = "Harpoon: Go to file 3" })
    vim.keymap.set("n", "<C-4>", function()
      harpoon:list():select(4)
    end, { desc = "Harpoon: Go to file 4" })
    vim.keymap.set("n", "<C-5>", function()
      harpoon:list():select(5)
    end, { desc = "Harpoon: Go to file 5" })

    vim.keymap.set("n", "[h", function()
      harpoon:list():prev()
    end, { desc = "Harpoon: Previous file" })
    vim.keymap.set("n", "]h", function()
      harpoon:list():next()
    end, { desc = "Harpoon: Next file" })

    vim.keymap.set("n", "<leader>hd", function()
      harpoon:list():remove()
      vim.notify("Removed from Harpoon", vim.log.levels.INFO)
    end, { desc = "Harpoon: Remove file" })

    vim.keymap.set("n", "<leader>hc", function()
      harpoon:list():clear()
      vim.notify("Harpoon list cleared", vim.log.levels.INFO)
    end, { desc = "Harpoon: Clear all" })
  end,
}
