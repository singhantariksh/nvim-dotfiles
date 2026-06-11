return {
  "saghen/blink.cmp",
  event = { "InsertEnter" },
  dependencies = { "rafamadriz/friendly-snippets", "L3MON4D3/LuaSnip", version = "v2.*" },
  version = "1.*",
  opts = {
    keymap = {
      preset = "default",

      ["<Tab>"] = false,
      ["<S-Tab>"] = false,
      ["<Up>"] = false,
      ["<Down>"] = false,

      ["<C-j>"] = { "snippet_forward", "fallback" },
      ["<C-k>"] = { "snippet_backward", "fallback" },

      ["<C-h>"] = { "show_signature", "hide_signature", "fallback" },
    },
    snippets = {
      preset = "luasnip",
    },
    sources = {
      default = { "lsp", "path", "snippets", "buffer" },
    },
  },
}
