local o = vim.o

o.number = true
o.relativenumber = true
o.termguicolors = true
o.encoding="utf-8"
o.mouse="a"
o.tabstop=2
o.shiftwidth=2
o.softtabstop=2
o.expandtab = true
o.clipboard = "unnamed"
o.smartindent = true
o.tabstop = 2
o.wrap = true
o.cmdheight = 2

vim.cmd [[set noswapfile]]
vim.cmd [[colorscheme tokyodark]]
-- vim.cmd [[highlight! Normal guibg=None]]o
--

vim.cmd(([[
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
]]))

