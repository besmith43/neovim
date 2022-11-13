local opt = vim.opt

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs and indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = true --originally had this set to false

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true

-- insert cursor to block
opt.guicursor =  "i:block"

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

-- makes sure that "-" is viewed as a part of words when searching
opt.iskeyword:append("-")

-- show whitespace
opt.listchars = "eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣"
opt.list = true


