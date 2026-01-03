return {
  "derektata/lorem.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("lorem").opts({
      sentence_length = "mixed", -- using a default configuration
      comma_chance = 0.3, -- 30% chance to insert a comma
      debounce_ms = 400, -- default debounce time in milliseconds
    })
  end,
}
