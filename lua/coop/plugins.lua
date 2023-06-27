--/ This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        requires = { { 'nvim-lua/plenary.nvim' }, { 'nvim-telescope/telescope-live-grep-args.nvim' },
        },
        config = function()
            require("telescope").load_extension("live_grep_args")
        end
    }

    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make', cond = vim.fn.executable 'make' == 1 }

    use 'folke/tokyonight.nvim'

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    use 'mbbill/undotree'

    use 'tpope/vim-fugitive'

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

    use 'rust-lang/rust.vim'

    use { 'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons' }

    use 'github/copilot.vim'

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true },
        theme = 'tokyonight'
    }

    use 'famiu/bufdelete.nvim'

    use {
        "AckslD/nvim-neoclip.lua",
        requires = {
            { 'nvim-telescope/telescope.nvim' },
        },
        config = function()
            require('neoclip').setup()
        end,
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
        config = function()
            require 'alpha'.setup(require 'alpha.themes.startify'.config)
        end
    }

    use "lewis6991/hover.nvim"

    use({
        "jackMort/ChatGPT.nvim",
        config = function()
            require("chatgpt").setup()
        end,
        requires = {
            "MunifTanjim/nui.nvim",
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope.nvim"
        }
    })
end)
