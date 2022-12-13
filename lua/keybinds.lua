local function map(m, k, v)
    vim.keymap.set(m, k, v, { silent = true })
end


map('n', '<C-h>', ':NvimTreeFindFile<CR>')
map('n', '<C-e>', ':Telescope oldfiles<CR>')
map('n', '<C-f>', ':Telescope live_grep<CR>')
map('n', '<C-p>', ':Telescope find_files<CR>')
map('n', '<C-Semicolon>', ':TroubleToggle<CR>')
