local function map(m, k, v)
    vim.keymap.set(m, k, v, { silent = true })
end


map('n', '<C-f>', ':NvimTreeFindFile<CR>')
map('n', '<C-e>', ':Telescope oldfiles<CR>')
map('n', '<C-p>', ':Telescope live_grep<CR>')
map('n', '<C-Semicolon>', ':TroubleToggle<CR>')
