return {
  {
    "mfussenegger/nvim-dap",
    keys = {
      { "<F5>",  function() require("dap").continue() end, desc = "DAP Continue" },
      { "<F10>", function() require("dap").step_over() end, desc = "DAP Step Over" },
      { "<F11>", function() require("dap").step_into() end, desc = "DAP Step Into" },
      { "<F12>", function() require("dap").step_out() end, desc = "DAP Step Out" },
      { "<leader>db", function() require("dap").toggle_breakpoint() end, desc = "DAP Toggle Breakpoint" },
      { "<leader>dB", function() require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: ")) end, desc = "DAP Conditional Breakpoint" },
      { "<leader>dr", function() require("dap").repl.toggle() end, desc = "DAP REPL" },
      { "<leader>dl", function() require("dap").run_last() end, desc = "DAP Run Last" },
      { "<leader>dq", function() require("dap").terminate() end, desc = "DAP Terminate" },
    },
  },
  -- UI
  {
    "rcarriga/nvim-dap-ui",
    dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },

    -- THIS is the important part: it gives Lazy a reason to load dap-ui
    keys = {
      { "<leader>du", function() require("dapui").toggle() end, desc = "DAP UI Toggle" },
    },

    config = function()
      local dap = require("dap")
      local dapui = require("dapui")

      dapui.setup({
        layouts = {
          {
            elements = {
              { id = "scopes", size = 0.40 },
              { id = "breakpoints", size = 0.20 },
              { id = "stacks", size = 0.20 },
              { id = "watches", size = 0.20 },
            },
            size = 30, -- columns
            position = "left",
          },
          {
            elements = {
              { id = "repl", size = 1.0 },
            },
            size = 0.20, -- height
            position = "bottom",
          },
        },
      })

      -- Auto open/close UI
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end
    end,
  },

  -- Inline values while debugging (optional but very nice)
  {
    "theHamsta/nvim-dap-virtual-text",
    dependencies = { "mfussenegger/nvim-dap" },
    opts = {},
  },
}

