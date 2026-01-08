return {
  "nvim-treesitter/nvim-treesitter",
  branch = "master",
  build = ":TSUpdate",
  event = { "BufReadPost", "BufNewFile" },

  main = "nvim-treesitter.configs",
  opts = {
    highlight = { enable = true, additional_vim_regex_highlighting = false },
    indent = { enable = true },
    ensure_installed = {
      "asm",
      "css",
      "gitignore",
      "go",
      "gomod",
      "html",
      "javascript",
      "json",
      "lua",
      "markdown",
      "python",
      "rust",
      "toml",
      "typescript",
      "tsx",
      "vue",
      "yaml"
    },
    auto_install = true,
  },
}

