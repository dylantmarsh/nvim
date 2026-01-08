vim.diagnostic.config({
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = " ",
      [vim.diagnostic.severity.WARN]  = " ",
      [vim.diagnostic.severity.HINT]  = " ",
      [vim.diagnostic.severity.INFO]  = " ",
    },
  },

  underline = true,
  update_in_insert = false,
  severity_sort = true,

  virtual_text = {
    spacing = 4,
    prefix = "●",
  },

  float = {
    border = "rounded",
    source = "if_many",
  },
})

vim.api.nvim_set_hl(0, "DiagnosticSignError", { fg = "#db4b4b" })
vim.api.nvim_set_hl(0, "DiagnosticSignWarn",  { fg = "#e0af68" })
vim.api.nvim_set_hl(0, "DiagnosticSignInfo",  { fg = "#0db9d7" })
vim.api.nvim_set_hl(0, "DiagnosticSignHint",  { fg = "#9d7cd8" })

