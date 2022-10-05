local function map(m, k, v)
    vim.keymap.set(m, k, v, { silent = true })
end


map('n', '<C-f>', ':NERDTreeFind<CR>')
map('n', '<C-t>', ':NERDTreeToggle<CR>')
map('n', '<C-e>', ':Telescope oldfiles<CR>')
map('n', '<C-p>', ':Telescope find_files<CR>')
