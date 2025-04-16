require("oil").setup({
    default_file_explorer = true,

    columns = {
        "icon",
        --"permissions",
        --"size",
        --"mtime",
    },
    win_options = {
        signcolumn = "auto",
    },

    delete_to_trash = true,
    show_hidden = true,

    keymaps = {
        ["g?"] = "actions.show_help",
        ["l"] = {callback = "actions.select", mode = "n"},
        ["<Leader>s"] = { "actions.select", opts = { vertical = true }, desc = "Open the entry in a vertical split" },
        ["<Leader>h"] = { "actions.select", opts = { horizontal = true }, desc = "Open the entry in a horizontal split" },
        ["<Leader>t"] = { "actions.select", opts = { tab = true }, desc = "Open the entry in new tab" },
        ["<C-p>"] = "actions.preview",
        ["<Esc>"] = {callback = "actions.close", mode = "n"},
        ["<C-l>"] = "actions.refresh",
        ["h"] = "actions.parent",
        ["_"] = "actions.open_cwd",
        ["`"] = "actions.cd",
        ["~"] = { "actions.cd", opts = { scope = "tab" }, desc = ":tcd to the current oil directory" },
        ["gs"] = "actions.change_sort",
        ["gx"] = "actions.open_external",
        ["g."] = "actions.toggle_hidden",
        ["g\\"] = "actions.toggle_trash",
    },

    float = {
        preview_split = "right",
        max_width = 100,
    }

})
require("oil-git-status").setup()

vim.keymap.set("n", "-", "<CMD>Oil --float<CR>", { desc = "Open parent directory" })
vim.keymap.set("n", "<Leader>e", "<CMD>Oil --float .<CR>", { desc = "Open parent directory" })
