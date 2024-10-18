local opt = vim.opt
local mapp = vim.g

vim.g.user42= 'rmenezes'
vim.g.mail42= 'rmenezes@student.42porto'
--Font
opt.guifont = "MesloLGS Nerd Font Mono:h11"

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

-- sync with systerm clipboard
opt.clipboard = "unnamedplus"

--leader key
vim.g.mapleader = " "
--theme_color
vim.g.background = "dark"

--swap files
opt.swapfile = false

-- C Indentation
opt.cindent = true

-- Indentation
opt.autoindent = true
opt.smartindent = true

--term colors
opt.termguicolors = true
