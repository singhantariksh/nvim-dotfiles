return {
  "nvzone/showkeys",
  cmd = "ShowkeysToggle",
  keys = {
    { "<leader>tk", "<cmd>ShowkeysToggle<cr>", desc = "Toggle show-keys" },
  },
  opts = {
    position = "top-right",
    timeout = 2,
    maxkeys = 8,
  },
}
