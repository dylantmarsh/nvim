return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    preset = "modern",
    delay = 300,
    icons = {
      breadcrumb = "»",
      separator = "➜",
      group = "+",
    },
    spec = {
      { "<leader>a", group = "Avante" },
      { "<leader>b", group = "Buffers" },
      { "<leader>c", group = "Code Actions" },
      { "<leader>/", group = "Comment" },
      { "<leader>d", group = "Debugger" },
      { "<leader>f", group = "Find" },
      { "<leader>g", group = "Git" },
      { "<leader>l", group = "LSP" },
      { "<leader>t", group = "Terminal" },
      { "<leader>x", group = "Diagnostics" },
    }
  }
}

