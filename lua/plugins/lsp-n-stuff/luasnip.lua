return {
  "L3MON4D3/LuaSnip",
  event = "VeryLazy",
  version = "v2.*",
  config = function()
    require("luasnip.loaders.from_lua").load({
      paths = { vim.fn.stdpath("config") .. "/lua/snippets" },
    })
  end,
}
