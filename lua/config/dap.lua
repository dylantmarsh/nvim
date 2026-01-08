local dap = require("dap")

dap.adapters.go = {
  type = "server",
  port = "${port}",
  executable = {
    command = "dlv",
    args = { "dap", "-l", "127.0.0.1:${port}" },
  },
}

dap.configurations.go = {
  {
    type = "go",
    name = "Debug Project",
    request = "launch",
    program = "${workspaceFolder}",
    outputMode = "remote"
  },
  {
    type = "go",
    name = "Debug Tests",
    request = "launch",
    mode = "test",
    program = "${workspaceFolder}",
  },
}

vim.fn.sign_define("DapBreakpoint", {
  text = "●",
  texthl = "DapBreakpoint",
  linehl = "",
  numhl = "",
})

vim.fn.sign_define("DapBreakpointCondition", {
  text = "●",
  texthl = "DapBreakpointCondition",
  linehl = "",
  numhl = "",
})

vim.fn.sign_define("DapBreakpointRejected", {
  text = "●",
  texthl = "DapBreakpointRejected",
  linehl = "",
  numhl = "",
})

vim.fn.sign_define("DapLogPoint", {
  text = "◆",
  texthl = "DapLogPoint",
  linehl = "",
  numhl = "",
})

vim.fn.sign_define("DapStopped", {
  text = "▶",
  texthl = "DapStopped",
  linehl = "DapStoppedLine",
  numhl = "",
})

vim.api.nvim_set_hl(0, "DapBreakpoint", { fg = "#f7768e" })
vim.api.nvim_set_hl(0, "DapBreakpointCondition", { fg = "#e0af68" })
vim.api.nvim_set_hl(0, "DapLogPoint", { fg = "#7aa2f7" })
vim.api.nvim_set_hl(0, "DapStopped", { fg = "#9ece6a", bold = true })
vim.api.nvim_set_hl(0, "DapStoppedLine", { bg = "#292e42" })
vim.api.nvim_set_hl(0, "DapBreakpointRejected", { fg = "#e0af68" })

