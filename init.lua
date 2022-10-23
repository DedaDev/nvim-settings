require('settings')
require('plugins')
require('keybinds')
require('telescope-settings')
require('lsp-settings')
require('cmp-settings')

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
  direction = 'horizontal'
}

require"lualine".setup{
  options = {
    theme = 'horizon'
  }
}


require"nvim-tree".setup { 
  diagnostics = {
    enable = true,
    show_on_dirs = true,
  }
}

require"trouble".setup {
  position = "right",
}

vim.lsp.set_log_level("debug")
