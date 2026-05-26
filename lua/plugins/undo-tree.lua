return {
  "mbbill/undotree",
  cmd = { "UndotreeToggle", "UndotreeFocus" },
  config = function()
    vim.g.undotree_WindowLayout = 4
    vim.g.undotree_DiffAutoOpen = false
    vim.g.undotree_SetFocusWhenToggle = true
  end,
  keys = {
    {
      "<leader>u",
      vim.cmd.UndotreeToggle,
      desc = "Undo Tree Toggle",
      mode = "n",
    },
  },
}

