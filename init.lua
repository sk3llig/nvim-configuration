-- Configurazione base

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.g.have_nerd_font = true

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.showmode = false

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.softtabstop = 2

require("config.lazy")

-- Carica i plugin non caricati
require("lazy").load({ plugins = { "lazydev.nvim", "neoconf.nvim" } })
-- Carica la configurazione LSP
require('config.lsp')

