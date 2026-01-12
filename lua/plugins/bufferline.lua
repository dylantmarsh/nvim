return {
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    event = "VeryLazy",
    opts = {
      options = {
        mode = "buffers",
        separator_style = "thin",
        indicator = {
          style = "none",
        },
        padding = 0,
        buffer_close_icon = "",
        modified_icon = "●",
        close_icon = "",
        show_buffer_close_icons = true,
        show_close_icon = false,
        diagnostics = "nvim_lsp",
        always_show_bufferline = true,
      }
    }
  },
  {
    "echasnovski/mini.bufremove",
    version = false,
    keys = {
      { "<leader>bx", function() require("mini.bufremove").delete(0, false) end, desc = "Close Buffer" },
      { "<leader>bX", function() require("mini.bufremove").delete(0, true) end, desc = "Force Close Buffer" },
      {
        "<leader>bo",
        function()
          local current = vim.api.nvim_get_current_buf()
          local bufremove = require("mini.bufremove")

          for _, buf in ipairs(vim.api.nvim_list_bufs()) do
            if buf ~= current and vim.api.nvim_buf_is_loaded(buf) then
              bufremove.delete(buf, false)
            end
          end
        end,
        desc = "Close Other Buffers",
      },
      {
        "<leader>ba",
        function()
          local bufremove = require("mini.bufremove")

          for _, buf in ipairs(vim.api.nvim_list_bufs()) do
            if vim.api.nvim_buf_is_loaded(buf) then
              bufremove.delete(buf, false)
            end
          end
        end,
        desc = "Close All Buffers",
      },
    }
  }
}

