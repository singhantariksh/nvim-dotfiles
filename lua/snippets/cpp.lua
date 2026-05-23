local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  s("lc", {
    t("// Problem "),
    i(1, "number"),
    t(": "),
    i(2, "title"),
    t({ "", "", "using namespace std;", "", "" }),
    i(0, "class Solution { ... }"),
  }),
}
