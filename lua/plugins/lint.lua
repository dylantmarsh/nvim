return {
  "mfussenegger/nvim-lint",
  event = { "BufReadPost", "BufNewFile" },
  config = function()
    local lint = require("lint")

    -- Go: use golangci-lint (CLI)
    lint.linters_by_ft = {
      go = { "golangcilint" },
      javascript = { "eslint" },
      typescript = { "eslint" },
      vue = { "eslint" },
    }

    -- Run linting on common moments
    local aug = vim.api.nvim_create_augroup("Linting", { clear = true })
    vim.api.nvim_create_autocmd({ "BufWritePost", "InsertLeave", "TextChanged" }, {
      group = aug,
      callback = function()
        lint.try_lint()
      end,
    })
  end,
}

