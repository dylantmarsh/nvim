return {
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
      buffer_close_icon = "",
      modified_icon = "●",
      close_icon = "",
      show_buffer_close_icons = false,
      show_close_icon = false,
      diagnostics = "nvim_lsp",
      always_show_bufferline = true,
    },
  },
}

