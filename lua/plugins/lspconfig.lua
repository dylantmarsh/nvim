return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    { "williamboman/mason.nvim", config = true },
    { "williamboman/mason-lspconfig.nvim" },
  },
  config = function()
    local shared = require("config.lsp")
    local vue_language_server_path =
      vim.fn.stdpath("data") .. "/mason/packages/vue-language-server/node_modules/@vue/language-server"

    local tsserver_filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" }

    local vue_plugin = {
      name = "@vue/typescript-plugin",
      location = vue_language_server_path,
      languages = { "vue" },
      configNamespace = "typescript",
    }

    local servers = {
      --- Web
      html = {},
      cssls = {},
      ts_ls = {
        init_options = {
          plugins = { vue_plugin },
        },
        filetypes = tsserver_filetypes,
      },

      --- Vue
      vue_ls = {
        init_options = {
          typescript = {
            tsdk = (function()
              local root = vim.fs.root(0, { "package.json", "tsconfig.json" })
              if root then
                return root .. "/node_modules/typescript/lib"
              end
              return nil
            end)(),
          },
        },
        settings = {
          vue = {
            validation = {
              template = true,
              script = true,
              style = true,
            },
          },
        },
      },

      --- Go
      gopls = {
        settings = {
          gopls = {
            analyses = {
              unusedparams = true,
              nilnes = true,
            },
            staticcheck = true,
          },
        },
      },

      -- Python
      pyright = {},

      --- Rust
      rust_analyzer = {
        settings = {
          ["rust-analyzer"] = {
            cargo = { allFeatures = true },
            diagnostics = { enable = true },
          },
        },
      },

      lua_ls = {
        settings = {
          Lua = {
            diagnostics = { globals = { "vim" } },
            workspace = { checkThirdParty = false },
            telemetry = { enable = false },
          },
        },
      },
    }

    vim.lsp.config('gdscript', {})
    vim.lsp.enable('gdscript')

    require("mason-lspconfig").setup({
      ensure_installed = vim.tbl_keys(servers),
      automatic_installation = true,
    })

    for name, opts in pairs(servers) do
      vim.lsp.config(name, vim.tbl_deep_extend("force", {
        capabilities = shared.capabilities,
        on_attach = shared.on_attach,
      }, opts))
      vim.lsp.enable(name)
    end
  end,
}

