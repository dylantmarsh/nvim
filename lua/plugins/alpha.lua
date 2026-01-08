return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.header.val = {
      "    ██▀███   ▄▄▄      ▓█████▄  ██▓ ▄████▄   ▄▄▄       ██▓    ",
      "   ▓██ ▒ ██▒▒████▄    ▒██▀ ██▌▓██▒▒██▀ ▀█  ▒████▄    ▓██▒    ",
      "   ▓██ ░▄█ ▒▒██  ▀█▄  ░██   █▌▒██▒▒▓█    ▄ ▒██  ▀█▄  ▒██░    ",
      "   ▒██▀▀█▄  ░██▄▄▄▄██ ░▓█▄   ▌░██░▒▓▓▄ ▄██▒░██▄▄▄▄██ ▒██░    ",
      "   ░██▓ ▒██▒ ▓█   ▓██▒░▒████▓ ░██░▒ ▓███▀ ░ ▓█   ▓██▒░██████▒",
      "   ░ ▒▓ ░▒▓░ ▒▒   ▓▒█░ ▒▒▓  ▒ ░▓  ░ ░▒ ▒  ░ ▒▒   ▓▒█░░ ▒░▓  ░",
      "     ░▒ ░ ▒░  ▒   ▒▒ ░ ░ ▒  ▒  ▒ ░  ░  ▒     ▒   ▒▒ ░░ ░ ▒  ░",
      "     ░░   ░   ░   ▒    ░ ░  ░  ▒ ░░          ░   ▒     ░ ░   ",
      "      ░           ░  ░   ░     ░  ░ ░            ░  ░    ░  ░",
      "                       ░          ░                          ",
    }


    dashboard.section.buttons.val = {
      dashboard.button("f", "  Find file", "<cmd>Telescope find_files<cr>"),
      dashboard.button("r", "  Recent files", "<cmd>Telescope oldfiles<cr>"),
      dashboard.button("g", "  Live grep", "<cmd>Telescope live_grep<cr>"),
      dashboard.button("n", "  New file", "<cmd>ene <BAR> startinsert <cr>"),
      dashboard.button("q", "  Quit", "<cmd>qa<cr>"),
    }

    -- Footer
    dashboard.section.footer.opts = {
      position = "center",
      hl = "AlphaFooter",
    }

    local quotes = {
      "Good news, everyone!",
      "Shut up and take my money!",
      "Bite my shiny metal ass.",
      "Science cannot move forward without heaps!",
      "You win again, gravity!",
      "I'll be whatever I wanna do.",
      "Now, now, perfectly symmetrical violence never solved anything.",
      "I'm so embarrased. I wish everyone else was dead.",
      "Hot diggity daffodil!",
      "Oh wait you're serious. Let me laugh even harder.",
      "Did everything just taste purple for a second?",
      "Hey baby, wanna kill all humans?",
      "No I'm doesn't.",
      "ALL HAIL THE HYPNO-TOAD.",
      "Some people call me Orange Joe.",
    }

    math.randomseed(vim.loop.hrtime())
    for i = #quotes, 2, -1 do
      local j = math.random(i)
      quotes[i], quotes[j] = quotes[j], quotes[i]
    end

    dashboard.section.footer.val = {
      quotes[1],
    }

    local function calc_padding()
      local win_height = vim.fn.winheight(0)

      local content_height =
        #dashboard.section.header.val +
        #dashboard.section.buttons.val +
        #dashboard.section.footer.val +
        0 -- spacing buffer

      return math.max(2, math.floor((win_height - content_height) / 2) - 8)
    end

    table.insert(dashboard.opts.layout, 1, { type = "padding", val = calc_padding() })

    vim.api.nvim_set_hl(0, "AlphaFooter", { fg = "#bb99f7" })

    dashboard.opts.opts.noautocmd = true
    alpha.setup(dashboard.opts)

    -- Optional: re-center when window size changes
    vim.api.nvim_create_autocmd("VimResized", {
      callback = function()
        pcall(vim.cmd, "AlphaRedraw")
      end,
    })
  end,
}
