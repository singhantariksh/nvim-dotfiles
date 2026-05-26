return {
  "obsidian-nvim/obsidian.nvim",
  version = "*",
  ft = { "markdown", "mdx" },
  opts = {
    ui = {
      enable = false,
    },
    legacy_commands = false,
    workspaces = {
      {
        name = "Vault",
        path = "~/Vault",
      },
    },
  },
}
