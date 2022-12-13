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
o.verbose=1 -- nemam pojma da li je ovo dobro, obisati kasnije ako nije

vim.cmd [[set noswapfile]]
vim.cmd [[colorscheme tokyodark]]
vim.cmd [[highlight! Normal guibg=None]]
vim.cmd [[highlight! NonText guibg=None]]
vim.cmd [[highlight! LineNr guibg=None]]
vim.cmd [[highlight! Folded guibg=None]]
vim.cmd [[highlight! SpecialKey guibg=None]]
vim.cmd [[highlight! VerticalSplit guibg=None]]
vim.cmd [[highlight! SignColumn guibg=None]]
vim.cmd [[highlight! EndOfBuffer guibg=None]]


vim.cmd(([[
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
]]))

vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = { '*.tsx', '*.ts', '*.jsx', '*.js' },
  command = 'silent! EslintFixAll',
  -- group = vim.api.nvim_create_augroup('MyAutocmdsJavaScripFormatting', {}),
})

require"toggleterm".setup{
  size = 10,
  open_mapping = [[<c-\>]],
  shade_filetypes = {},
  shade_terminals = true,
  shading_factor = '1',
  start_in_insert = true,
  persist_size = true,
  direction = 'horizontal',
  auto_scroll = true,
}

require"lualine".setup{
  options = {
    theme = 'horizon'
  },
  sections = {
    lualine_b = { 
      {
        'filename',
        path = 1,
      }
    },
    lualine_c = {'searchcount'},
    lualine_x = {'filetype'},
    lualine_z = {
      'branch' 
    }
  }
}

require"nvim-tree".setup { 
  open_on_setup = true,
  view = {
    adaptive_size = true,
    side = 'right',
  },
  diagnostics = {
    enable = true,
    show_on_dirs = true,
  }
}

require"trouble".setup {
  position = "right",
}

vim.lsp.set_log_level("debug")
