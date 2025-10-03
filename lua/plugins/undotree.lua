return {
  "mbbill/undotree",
  config = function()

    vim.g.undotree_WindowLayout = 4
    vim.g.undotree_DiffAutoOpen = false
    vim.g.undotree_SetFocusWhenToggle = true
    vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle, { desc = "Undo Tree Toggle" })
  end,
}
