require 'mason'.setup()
require 'lualine'.setup()

-- interface
vim.opt.showtabline = 2 -- display page lables
vim.opt.cursorline = true -- display current line
vim.opt.colorcolumn = "80" -- set line character soft limit
vim.opt.incsearch = true
vim.opt.termguicolors = true
vim.o.background = "dark"
vim.cmd([[colorscheme nord]])

-- management
vim.opt.nu = true
vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.mouse = 'a'

-- indent
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true -- uses indent from previous line
vim.opt.smartindent = true -- reacts to code syntax style

-- remaps
vim.g.mapleader = ' '

-- telescope plugin settings
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
