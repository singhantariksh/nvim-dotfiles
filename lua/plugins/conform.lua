local prettier_opts = { "prettierd", "prettier", stop_after_first = true }

return {
  "stevearc/conform.nvim",
  cmd = "ConformInfo",
  opts = {
    formatters_by_ft = {
      -- Lua
      lua = { "stylua" },

      -- C/C++
      c = { "clang-format" },
      cpp = { "clang-format" },

      -- C#
      cs = { "csharpier" },

      -- Python
      python = { "isort", "black" },

      -- Java
      java = { "google-java-format" },

      -- Rust
      rust = { "rustfmt" },

      -- Web
      javascript = prettier_opts,
      javascriptreact = prettier_opts,
      typescript = prettier_opts,
      typescriptreact = prettier_opts,
      html = prettier_opts,
      css = prettier_opts,

      -- SQL
      sql = { "sqlfmt" },

      -- Mongo (JS/JSON format)
      mongodb = prettier_opts,

      -- Other
      go = { "gofmt" },
      sh = { "shfmt" },
      toml = { "taplo" },
      yaml = prettier_opts,
      json = prettier_opts,
      xml = prettier_opts,
      markdown = prettier_opts,
    },

    -- Format on save (disabled by default)
    format_on_save = function(bufnr)
      -- Only format if explicitly enabled
      if not vim.g.enable_autoformat and not vim.b[bufnr].enable_autoformat then
        return
      end
      return { timeout_ms = 500, lsp_fallback = true }
    end,
  },

  config = function(_, opts)
    require("conform").setup(opts)

    -- Create user commands for toggling format-on-save
    vim.api.nvim_create_user_command("FormatOnSaveEnable", function(args)
      if args.bang then
        vim.b.enable_autoformat = true
        vim.notify("Enabled format-on-save for this buffer", vim.log.levels.INFO)
      else
        vim.g.enable_autoformat = true
        vim.notify("Enabled format-on-save globally", vim.log.levels.INFO)
      end
    end, {
      desc = "Enable autoformat-on-save",
      bang = true,
    })

    vim.api.nvim_create_user_command("FormatOnSaveDisable", function(args)
      if args.bang then
        vim.b.enable_autoformat = false
        vim.notify("Disabled format-on-save for this buffer", vim.log.levels.INFO)
      else
        vim.g.enable_autoformat = false
        vim.notify("Disabled format-on-save globally", vim.log.levels.INFO)
      end
    end, {
      desc = "Disable autoformat-on-save",
      bang = true,
    })
  end,

  keys = {
    {
      "<leader>f",
      function()
        require("conform").format({
          async = true,
          lsp_fallback = true,
        }, function(err)
          -- If formatting failed, fallback to manual indentation
          if err then
            local pos = vim.api.nvim_win_get_cursor(0)
            vim.cmd("normal! gg=G")
            vim.api.nvim_win_set_cursor(0, pos)
            vim.notify("Formatted with built-in indentation", vim.log.levels.INFO)
          end
        end)
      end,
      desc = "Format file",
      mode = "n",
    },
    {
      "<leader>f",
      function()
        local start_line = vim.fn.line("'<")
        local end_line = vim.fn.line("'>")
        require("conform").format({ range = { start_line, end_line } })
      end,
      desc = "Format selection",
      mode = "v",
    },

    -- Toggle format-on-save globally
    {
      "<leader>tf",
      function()
        vim.g.enable_autoformat = not vim.g.enable_autoformat
        if vim.g.enable_autoformat then
          vim.notify("Enabled format-on-save (global)", vim.log.levels.INFO)
        else
          vim.notify("Disabled format-on-save (global)", vim.log.levels.INFO)
        end
      end,
      desc = "Toggle format-on-save (global)",
      mode = "n",
    },
    -- Toggle format-on-save for current buffer
    {
      "<leader>tF",
      function()
        vim.b.enable_autoformat = not vim.b.enable_autoformat
        if vim.b.enable_autoformat then
          vim.notify("Enabled format-on-save (buffer)", vim.log.levels.INFO)
        else
          vim.notify("Disabled format-on-save (buffer)", vim.log.levels.INFO)
        end
      end,
      desc = "Toggle format-on-save (buffer)",
      mode = "n",
    },
  },
}
