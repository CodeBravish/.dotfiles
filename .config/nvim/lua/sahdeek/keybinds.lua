function Map(m, k, v)
    vim.keymap.set(m, k, v, { noremap = true, silent = true })
end

-- Window Navigation
Map('n', '<C-H>', '<C-w>h')
Map('n', '<C-J>', '<C-w>j')
Map('n', '<C-K>', '<C-w>k')
Map('n', '<C-L>', '<C-w>l')

Map('n', '<Leader>s', '<C-w>v')
Map('n', '<Leader>h', '<C-w>s')
Map('n', '<Leader>t', '<CMD>:tabnew<CR>')

-- Clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
