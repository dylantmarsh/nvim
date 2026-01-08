return {
  "nvim-telescope/telescope.nvim",
  cmd = "Telescope",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  keys = {
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find files" },
    { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live grep" },
    { "<leader>fw", "<cmd>Telescope grep_string<cr>", desc = "Find word" },
    { "<leader>fd", "<cmd>Telescope lsp_definitions<cr>", desc = "Find definitions" },
    { "<leader>fr", "<cmd>Telescope lsp_references<cr>", desc = "Find references" },
    {
      "<leader>fs",
      function()
        require("telescope.builtin").lsp_document_symbols({
          symbols = { "function", "method", "class", "interface", "struct", "enum" },
        })
      end,
      desc = "Find symbols",
    }
  },
  config = function()
    require("telescope").setup({
      defaults = {
        layout_strategy = "horizontal",
        sorting_strategy = "ascending",
      },
    })
  end
}
