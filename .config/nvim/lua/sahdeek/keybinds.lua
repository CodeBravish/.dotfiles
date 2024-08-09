function Map(m, k, v)
    vim.keymap.set(m, k, v, { noremap = true, silent = true })
end

-- Window Navigation
Map('n', '<C-H>', '<C-w>h')
Map('n', '<C-J>', '<C-w>j')
Map('n', '<C-K>', '<C-w>k')
Map('n', '<C-L>', '<C-w>l')

-- Clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
