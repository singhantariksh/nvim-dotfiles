return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim", "ibhagwan/fzf-lua" },
  config = function()
    local harpoon = require("harpoon")
    harpoon:setup()

    -- FZF-Lua integration
    local function toggle_fzf(harpoon_files)
      local file_paths = {}
      for idx, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, string.format("%d. %s", idx, item.value))
      end

      require("fzf-lua").fzf_exec(file_paths, {
        prompt = 'Harpoon❯ ',
        previewer = "builtin",
        actions = {
          ['default'] = function(selected)
            local idx = tonumber(selected[1]:match("^(%d+)"))
            if idx then
              harpoon:list():select(idx)
            end
          end
        }
      })
    end

    vim.keymap.set("n", "<A-a>", function() harpoon:list():add() end, { desc = "Add file to Harpoon" })
    vim.keymap.set("n", "<leader>sj", function() toggle_fzf(harpoon:list()) end, { desc = "Search Harpoon" })
    vim.keymap.set("n", "<A-h>", function() harpoon:list():select(1) end, { desc = "Harpoon to file 1" })
    vim.keymap.set("n", "<A-j>", function() harpoon:list():select(2) end, { desc = "Harpoon to file 2" })
    vim.keymap.set("n", "<A-k>", function() harpoon:list():select(3) end, { desc = "Harpoon to file 3" })
    vim.keymap.set("n", "<A-l>", function() harpoon:list():select(4) end, { desc = "Harpoon to file 4" })
    vim.keymap.set("n", "<A-p>", function() harpoon:list():prev() end, { desc = "Harpoon to previous file"})
    vim.keymap.set("n", "<A-n>", function() harpoon:list():next() end, { desc = "Harpoon to next file"})
  end,
}
