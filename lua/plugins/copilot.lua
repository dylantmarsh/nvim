return {
  "github/copilot.vim",
  cmd = "Copilot",
  event = "InsertEnter",
  init = function()
    vim.g.copilot_no_tab_map = true
  end,
  config = function()
    -- Accept suggestion
    vim.keymap.set("i", "<C-l>", 'copilot#Accept("")', {
      expr = true,
      replace_keycodes = false,
      desc = "Copilot Accept",
    })

    -- Cycle suggestions (pick keys that DON'T alias Esc)
    vim.keymap.set("i", "<M-]>", "<Plug>(copilot-next)", { desc = "Copilot Next" })
    vim.keymap.set("i", "<M-[>", "<Plug>(copilot-previous)", { desc = "Copilot Prev" })

    -- Dismiss
    vim.keymap.set("i", "<C-x>", "<Plug>(copilot-dismiss)", { desc = "Copilot Dismiss" })
  end,
}

