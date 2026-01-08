-- lua/config/options.lua
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local opt = vim.opt

opt.number = true
opt.relativenumber = true
opt.mouse = "a"

opt.clipboard = "unnamedplus"

opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.smartindent = true

opt.ignorecase = true
opt.smartcase = true

opt.signcolumn = "yes"
opt.termguicolors = true

opt.updatetime = 250
opt.timeoutlen = 400

opt.splitright = true
opt.splitbelow = true

opt.undofile = true

opt.termguicolors = true

opt.wrap = false

vim.api.nvim_set_hl(0, "BufferLineFill", {
  bg = "#181b2a",
})


