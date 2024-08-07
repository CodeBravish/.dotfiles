vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

    use 'wbthomason/packer.nvim'

    use { 'nvim-telescope/telescope.nvim', tag = '0.1.8',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use {
        "folke/tokyonight.nvim",
        as = 'tokyonight',
        config = function()
            vim.cmd('colorscheme tokyonight-night')
        end
    }

    use {
        'nvim-treesitter/nvim-treesitter',
        {run = ':TSUpdate'}
    }

    use 'nvim-tree/nvim-tree.lua'
    use 'nvim-tree/nvim-web-devicons'

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    -- LSP
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},
            {'neovim/nvim-lspconfig'},

            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'saadparwaiz1/cmp_luasnip'},

            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'}
        }
        }
end)
