return {
  "saghen/blink.cmp",
  event = { "InsertEnter" },
  dependencies = { "rafamadriz/friendly-snippets", "L3MON4D3/LuaSnip", version = "v2.*" },
  version = "1.*",
  opts = {
    keymap = {
      preset = "none",

      ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
      ["<C-e>"] = { "hide", "fallback" },
      ["<C-y>"] = { "select_and_accept", "fallback" },

      ["<C-p>"] = { "select_prev", "fallback_to_mappings" },
      ["<C-n>"] = { "select_next", "fallback_to_mappings" },

      ["<C-b>"] = { "scroll_documentation_up", "fallback" },
      ["<C-f>"] = { "scroll_documentation_down", "fallback" },

      ["<Tab>"] = false,
      ["<S-Tab>"] = false,
      ["<Up>"] = false,
      ["<Down>"] = false,

      ["<C-j>"] = { "snippet_forward", "fallback" },
      ["<C-k>"] = { "snippet_backward", "fallback" },

      ["<C-s>"] = { "show_signature", "hide_signature", "fallback" },
    },
    snippets = {
      preset = "luasnip",
    },
    sources = {
      default = { "lsp", "path", "snippets", "buffer" },
    },
  },
}
