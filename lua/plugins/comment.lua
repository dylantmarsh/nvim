return {
  "numToStr/Comment.nvim",
  event = { "BufReadPost", "BufNewFile" },
  opts = {
    mappings = {
      basic = false,
      extra = false,
    },
  },
  keys = {
    { "<leader>/",  function() require("Comment.api").toggle.linewise.current() end, desc = "Comment: Toggle line" },
    { "<leader>?",  function() require("Comment.api").toggle.blockwise.current() end, desc = "Comment: Toggle block" },
  },
}

