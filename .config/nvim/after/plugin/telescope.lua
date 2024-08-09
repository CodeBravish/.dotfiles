local telescope = require('telescope')
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>p', builtin.find_files, {})
vim.keymap.set('n', '<leader>f', builtin.git_files, {})

telescope.setup{
  defaults = {
    mappings = {
      i = {
        -- Change keybinding for opening files in a new tab
        ["<C-t>"] = require('telescope.actions').select_tab
      },
      n = {
        -- Change keybinding for opening files in a new tab
        ["<C-t>"] = require('telescope.actions').select_tab
      },
    },
  },
}
