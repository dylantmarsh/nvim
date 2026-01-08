local function set_cmp_hl()
  local menu_bg = "#1c2032"
  local doc_bg  = "#171a29"
  local border  = "#3b4261"
  local sel_bg  = "#2a2e44"

  vim.api.nvim_set_hl(0, "CmpNormal",    { bg = menu_bg })
  vim.api.nvim_set_hl(0, "CmpBorder",    { fg = border, bg = menu_bg })
  vim.api.nvim_set_hl(0, "CmpSel",       { bg = sel_bg })

  vim.api.nvim_set_hl(0, "CmpDocNormal", { bg = doc_bg })
  vim.api.nvim_set_hl(0, "CmpDocBorder", { fg = border, bg = doc_bg })
end

vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = set_cmp_hl,
})
set_cmp_hl()

