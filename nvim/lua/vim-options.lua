local opt = vim.opt

vim.g.user42= 'rmenezes'
vim.g.mail42= 'rmenezes@student.42porto'

opt.guifont = "Iosevka Nerd Font:h11"

-- Line Numbers
opt.number = true
opt.numberwidth = 3
opt.relativenumber = true
opt.ignorecase = true
opt.smartcase = true
opt.ruler = true
opt.linebreak = false
opt.clipboard="unnamedplus"

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

-- terminal colors
opt.termguicolors = true

-- Indentation
opt.autoindent = true
opt.smartindent = true
