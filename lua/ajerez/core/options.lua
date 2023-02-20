local opt = vim.opt 
vim.env.OPENAI_API_KEY = "tu clave aqui"

-- line numbers
--
opt.relativenumber = true
opt.number = true

opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

opt.hlsearch = true
opt.ignorecase = false
opt.incsearch = true

-- line wrapping
opt.wrap = false
opt.smartcase = true

opt.cursorline = true
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

opt.backspace = "indent,eol,start"

opt.clipboard:append("unnamedplus");

opt.splitright = true
opt.splitbelow = true
--opt.completefunc=syntaxcomplete#Complete
