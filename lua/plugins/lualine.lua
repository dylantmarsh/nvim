return {
  "nvim-lualine/lualine.nvim",
  lazy = false,
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("lualine").setup({
      options = {
        theme = "auto",
        globalstatus = true, -- works with laststatus=3
        icons_enabled = true,
        section_separators = "",
        component_separators = "",
      },
    })
  end,
}

