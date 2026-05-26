return {
  "SmiteshP/nvim-navic",
  event = "VeryLazy",
  dependencies = {
    "neovim/nvim-lspconfig",
  },
  config = function()
    local navic = require("nvim-navic")

    navic.setup({
      highlight = true,
      icons = {
        File = " ",
        Module = " ",
        Namespace = " ",
        Package = " ",
        Class = " ",
        Method = " ",
        Property = " ",
        Field = " ",
        Constructor = " ",
        Enum = " ",
        Interface = " ",
        Function = " ",
        Variable = " ",
        Constant = " ",
        String = " ",
        Number = " ",
        Boolean = " ",
        Array = " ",
        Object = " ",
        Key = " ",
        Null = " ",
        EnumMember = " ",
        Struct = " ",
        Event = " ",
        Operator = " ",
        TypeParameter = " ",
        enabled = true,
      },
    })

    -- Automatically attach to LSP when a server starts
    vim.api.nvim_create_autocmd("LspAttach", {
      group = vim.api.nvim_create_augroup("navic-attach", { clear = true }),
      callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        if client.server_capabilities.documentSymbolProvider then
          navic.attach(client, args.buf)
        end
      end,
    })

    -- This function decides what to show at the top of the window.
    _G.get_winbar = function()
      -- Show Breadcrumbs if available
      if navic.is_available() then
        return " " .. navic.get_location()
      else
        return ""
      end
    end

    -- Enable the Winbar globally
    vim.opt.winbar = "%{%v:lua.get_winbar()%}"
  end,
}
