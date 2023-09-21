--/ This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.1',
        requires = {
            { 'nvim-lua/plenary.nvim' },
            { 'debugloop/telescope-undo.nvim' },
            { 'nvim-telescope/telescope-live-grep-args.nvim' },
        }
    }

    use {
        'nvim-telescope/telescope-fzf-native.nvim',
        run = 'make',
        cond = vim.fn.executable 'make' == 1
    }


    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            { 'neovim/nvim-lspconfig' },
            {
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            { 'williamboman/mason-lspconfig.nvim' },
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'L3MON4D3/LuaSnip' },
        },
    }


    use {
        'akinsho/bufferline.nvim',
        tag = "*",
        requires = 'nvim-tree/nvim-web-devicons'
    }

    use {
        'nvim-lualine/lualine.nvim',
        requires = {
            'nvim-tree/nvim-web-devicons',
            opt = true
        },
        theme = 'tokyonight'
    }


    use {
        'tanvirtin/vgit.nvim',
        requires = {
            'nvim-lua/plenary.nvim'
        }
    }

    use {
        'goolord/alpha-nvim',
        requires = { 'nvim-tree/nvim-web-devicons' },
    }

    use {
        'phaazon/hop.nvim',
        branch = 'v2',
    }

    use({
        'Wansmer/treesj',
        requires = { 'nvim-treesitter/nvim-treesitter' },
    })

    use({
        'smoka7/multicursors.nvim',
        requires = { 'smoka7/hydra.nvim' },
    })

    use {
        'kevinhwang91/nvim-ufo',
        requires = 'kevinhwang91/promise-async',
    }

    use 'github/copilot.vim'

    use 'folke/tokyonight.nvim'

    use 'mfussenegger/nvim-dap'

    use 'windwp/nvim-autopairs'

    use 'famiu/bufdelete.nvim'

    use 'rmagatti/auto-session'

    use 'ahmedkhalf/project.nvim'

    use 'numToStr/Comment.nvim'

    use 'lukas-reineke/indent-blankline.nvim'

    use 'kylechui/nvim-surround'

    use 'gaoDean/autolist.nvim'

    use 'anuvyklack/pretty-fold.nvim'
end)
