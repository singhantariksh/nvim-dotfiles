return {
  "mfussenegger/nvim-dap",

  dependencies = {
    "igorlfs/nvim-dap-view",
    "jay-babu/mason-nvim-dap.nvim",
  },

  keys = {
    -- DAP View Binds
    { "<leader>dt", "<cmd>DapViewToggle<cr>", desc = "Toggle DAP View" },
    { "<leader>dv", "<cmd>DapViewVirtualTextToggle<cr>", desc = "Toggle Virtual Text" },
    { "<leader>dw", "<cmd>DapViewWatch<cr>", desc = "Dap Watch Variable" },

    -- Debug Adapter Protocol Binds
    { "<leader>dd", "<cmd>DapDisconnect<cr>", desc = "Disconnect" },
    { "<leader>db", "<cmd>DapToggleBreakpoint<cr>", desc = "Toggle Breakpoint" },
    { "<leader>dc", "<cmd>DapClearBreakpoint<cr>", desc = "Clear Breakpoint" },
    { "<leader>dn", "<cmd>DapContinue<cr>", desc = "Continue" },
    { "<leader>di", "<cmd>DapStepInto<cr>", desc = "Step Into" },
    { "<leader>do", "<cmd>DapStepOut<cr>", desc = "Step Out" },
    { "<leader>dO", "<cmd>DapStepOver<cr>", desc = "Step Over" },
  },

  config = function()

    require("mason-nvim-dap").setup({
      ensure_installed = { "codelldb" },
      automatic_installation = false,
      handlers = {},
    })

    local dap = require("dap")

    -- configurations for C/C++/Rust
    dap.configurations.cpp = {
      {
        name = "Launch file",
        type = "codelldb",
        request = "launch",
        program = function()
          return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
        end,
        cwd = "${workspaceFolder}",
        stopOnEntry = false,
      },
    }
    dap.configurations.c = dap.configurations.cpp
    dap.configurations.rust = dap.configurations.cpp

    -- modifying the sings for dap
    vim.api.nvim_set_hl(0, "DapBreakpoint", { fg = "#f7768e" })
    vim.api.nvim_set_hl(0, "DapBreakpointCondition", { fg = "#eecf66" })
    vim.api.nvim_set_hl(0, "DapBreakpointRejected", { fg = "#ff9e64" })
    vim.api.nvim_set_hl(0, "DapLogPoint", { fg = "#7aa2f7" })
    vim.api.nvim_set_hl(0, "DapStopped", { fg = "#9ece6a" })

    vim.fn.sign_define("DapBreakpoint", {
      text = "",
      texthl = "DapBreakpoint",
      linehl = "",
      numhl = "",
    })

    vim.fn.sign_define("DapBreakpointCondition", {
      text = "",
      texthl = "DapBreakpointCondition",
      linehl = "",
      numhl = "",
    })

    vim.fn.sign_define("DapBreakpointRejected", {
      text = "",
      texthl = "DapBreakpointRejected",
      linehl = "",
      numhl = "",
    })

    vim.fn.sign_define("DapLogPoint", {
      text = "",
      texthl = "DapLogPoint",
      linehl = "",
      numhl = "",
    })

    vim.fn.sign_define("DapStopped", {
      text = "",
      texthl = "DapStopped",
      linehl = "CursorLine",
      numhl = "",
    })
  end,
}
