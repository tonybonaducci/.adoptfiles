local opt = vim.opt

-- Line Numbers
opt.number = true
opt.numberwidth = 3
opt.relativenumber = true
opt.ignorecase = true
opt.smartcase = true
opt.ruler = true
opt.linebreak = false

-- Tabs
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = false

--leader key
vim.g.mapleader = " "
--theme_color
vim.g.background = "dark"

--swap files
vim.opt.swapfile = false

-- C Indentation
opt.cindent = true

-- Indentation
opt.autoindent = true
opt.smartindent = true
