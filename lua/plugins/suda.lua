return {
  "lambdalisue/vim-suda",
  event = { "BufReadPre", "BufNewFile" },
  init = function()
    vim.g.suda_smart_edit = 0
  end,
  config = function()
    vim.api.nvim_create_user_command("Sw", "SudaWrite", {})
  end,
}
