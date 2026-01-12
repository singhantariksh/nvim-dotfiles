return {
  "obsidian-nvim/obsidian.nvim",
  version = "*",
  ft = { "markdown", "mdx" },
  opts = {
    legacy_commands = false,
    workspaces = {
      {
        name = "Vault",
        path = "~/Vault",
      },
    },
  },
}
