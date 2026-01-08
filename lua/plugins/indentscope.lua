return {
  "echasnovski/mini.indentscope",
  version = false,
  event = { "BufReadPre", "BufNewFile" }, -- make sure it loads
  config = function()
    require("mini.indentscope").setup({
      symbol = "│",
      options = { try_as_border = true },
      draw = {
        delay = 50
      },
    })

    -- Make it visible on Tokyonight
    vim.api.nvim_set_hl(0, "MiniIndentscopeSymbol", { fg = "#3b4261", nocombine = true })
    vim.api.nvim_set_hl(0, "MiniIndentscopePrefix", { nocombine = true })
  end,
}

