return {
    "nvimtools/none-ls.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvimtools/none-ls-extras.nvim",
    },
    config = function()
        local null_ls = require("null-ls")

        null_ls.setup({
            sources = {
                -- Lua
                null_ls.builtins.formatting.stylua,

                -- C/C++
                null_ls.builtins.formatting.clang_format,

                -- C#
                null_ls.builtins.formatting.csharpier,

                -- Python
                null_ls.builtins.formatting.black,

                -- Java
                null_ls.builtins.formatting.google_java_format,

                -- Web / JS / TS / JS-Framworks / HTML / CSS
                null_ls.builtins.formatting.prettier,

                -- SQL
                null_ls.builtins.formatting.sql_formatter,
            },
        })

        vim.keymap.set("n", "<leader>ff", function()
            vim.lsp.buf.format({ async = true })
        end, { desc = "Format file" })
    end,
}
