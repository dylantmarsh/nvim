return {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  event = "VeryLazy",
  opts = {
    signs = true,
    keywords = {
      TODO = { icon = " ", color = "info" },
      FIX  = { icon = " ", color = "error" },
      HACK = { icon = " ", color = "warning" },
      NOTE = { icon = "󰍨 ", color = "hint" },
    },
  },
}

