return {
  "akinsho/toggleterm.nvim",
  version = "*",
  keys = {
    { "<leader>tt", "<cmd>ToggleTerm<cr>", desc = "Toggle Terminal" },
  },
  opts = {
    direction = "horizontal",
    size = 15,
    open_mapping = nil, -- we control it explicitly
    shade_terminals = true,
    shading_factor = 2,
    start_in_insert = true,
    persist_size = true,
    persist_mode = true,
    close_on_exit = false,
  },
}

