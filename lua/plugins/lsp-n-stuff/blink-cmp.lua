return {
  "saghen/blink.cmp",
  event = { "InsertEnter" },
  dependencies = { "rafamadriz/friendly-snippets", "L3MON4D3/LuaSnip", version = "v2.*" },
  version = "1.*",
  opts = {
    snippets = {
      preset = "luasnip",
    },
    sources = {
      default = { "lsp", "path", "snippets", "buffer" },
    },
  },
}
