local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  -- LEETCODE (lc) BOILERPLATE
  s("lc", {
    t("// Problem "),
    i(1, "number"),
    t(": "),
    i(2, "title"),
    t({ "", "", "using namespace std;", "", "" }),
    i(0, "// function here"),
  }),

  -- CODEFORCES (cf) BOILERPLATE
  s("cf", {
    t("// Problem "),
    i(1, "number"),
    t(": "),
    i(2, "title"),
    t({
      "",
      "",
      "void solution() {",
      "",
    }),
    i(0, "  // code here"),
    t({
      "",
      "}",
      "",
      "int main() {",
      "  std::ios_base::sync_with_stdio(false);",
      "  std::cin.tie(nullptr);",
      "",
      "  int counter{1};",
      "  std::cin >> counter;",
      "  while (counter--) {",
      "    solution();",
      "  }",
      "",
      "  return 0;",
      "}",
    }),
  }),
}
