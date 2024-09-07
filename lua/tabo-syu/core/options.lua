vim.cmd("let g:newtr_liststyle = 3")

local opt = vim.opt

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true

-- appearance
---- turn on termguicolors for nightfly colorscheme to work
---- (have to use iterm2 or any other true color terminal)
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"
opt.winblend = 0
opt.pumblend = 0

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

-- turn off swapfile
opt.swapfile = false
