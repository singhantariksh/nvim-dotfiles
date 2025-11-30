return {
  "andweeb/presence.nvim",
  event = "VeryLazy",

  -- Do NOT load when running inside VSCode
  cond = function()
    return not vim.g.vscode
  end,

  opts = {
    neovim_image_text = "Neovim",
  },

  config = function(_, opts)
    require("presence").setup(opts)
  end,
}
