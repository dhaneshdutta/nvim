-- settings.lua

-- Set leader key to space
vim.g.mapleader = " "

-- Enable line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Enable syntax highlighting and colorscheme
vim.cmd("syntax enable")
vim.cmd("colorscheme tokyonight")

-- Set clipboard to system clipboard
vim.opt.clipboard = "unnamedplus"

-- Set tab and indent settings
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2

-- Enable cursor line
vim.opt.cursorline = true

-- Set split behavior
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Enable true color support
vim.opt.termguicolors = true

-- Enable wildmenu for command-line completion
vim.opt.wildmenu = true

-- Set wildignore for file types and directories
vim.opt.wildignore = "*/.git/*,*/.hg/*,*/.svn/*,*.pyc"

-- Enable persistent undo
vim.opt.undofile = true

-- Set fold method
vim.opt.foldmethod = "indent"
vim.opt.foldnestmax = 3
vim.opt.foldenable = false

