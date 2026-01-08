local M = {}

M.capabilities = vim.lsp.protocol.make_client_capabilities()
local ok, cmp = pcall(require, "cmp_nvim_lsp")
if ok then
  M.capabilities = cmp.default_capabilities(M.capabilities)
end

M.on_attach = function(_, bufnr)
  local map = function(lhs, rhs, desc)
    vim.keymap.set("n", lhs, rhs, { buffer = bufnr, desc = desc })
  end

  map("gd", vim.lsp.buf.definition, "Definition")
  map("gr", vim.lsp.buf.references, "References")
  map("gi", vim.lsp.buf.implementation, "Implementation")
  map("K", vim.lsp.buf.hover, "Hover")
  map("<leader>rn", vim.lsp.buf.rename, "Rename")
  map("<leader>ca", vim.lsp.buf.code_action, "Code Action")
  map("[d", vim.diagnostic.goto_prev, "Prev diagnostic")
  map("]d", vim.diagnostic.goto_next, "Next diagnostic")
end

return M

