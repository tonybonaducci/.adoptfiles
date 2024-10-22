local opt = vim.opt
local keymap = vim.keymap

vim.g.user42= 'rmenezes'
vim.g.mail42= 'rmenezes@student.42porto'

--opt.guifont = "Monoid Retina"

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

-- LSP
-- Disable/Enable LSP

keymap.set("n", "<leader>ld", ":LspStop<CR>", { desc = "Disable LSP" })
keymap.set("n", "<leader>le", ":LspStart<CR>", { desc = "Enable LSP" })

-- terminal colors
opt.termguicolors = true

-- Indentation
opt.autoindent = true
opt.smartindent = true
