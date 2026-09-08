vim.loader.enable()

vim.cmd.colorscheme("color-9")
-- Leader must be set BEFORE any plugin loads, because plugins bind to whatever
-- the leader is at their load time.
vim.g.mapleader = ","
vim.g.maplocalleader = ","

require('core.options')
require('core.autocmd')
require('core.keymaps')
require('core.pack')
require('plugins')
