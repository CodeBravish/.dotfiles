local function map(m, k, v)
    vim.keymap.set(m, k, v, { noremap = true, silent = true })
end

map('n', '<C-H>', '<C-w>h')
map('n', '<C-J>', '<C-w>j')
map('n', '<C-K>', '<C-w>k')
map('n', '<C-L>', '<C-w>l')
