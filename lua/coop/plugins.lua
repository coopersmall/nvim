--/ This file can be loaded by calling `lua require('plugins')` from your init.vim

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.1',
        dependencies = {
            { 'nvim-lua/plenary.nvim' },
            { 'debugloop/telescope-undo.nvim' },
            { 'nvim-telescope/telescope-live-grep-args.nvim' },
        }
    },

    {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make',
        cond = vim.fn.executable 'make' == 1,
    },

    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
    },

    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        dependencies = {
            { 'neovim/nvim-lspconfig' },
            {
                'williamboman/mason.nvim',
                build = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            { 'williamboman/mason-lspconfig.nvim' },
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'L3MON4D3/LuaSnip' },
        },
    },

    {
        'akinsho/bufferline.nvim',
        dependencies =
        'nvim-tree/nvim-web-devicons'
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons', opt = true },
        theme =
        'tokyonight'
    },

    {
        'tanvirtin/vgit.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' },
    },
    {
        'goolord/alpha-nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
    },
    {
        'phaazon/hop.nvim',
        branch = 'v2',
    },
    {
        'Wansmer/treesj',
        dependencies = { 'nvim-treesitter/nvim-treesitter' },
    },
    {
        'smoka7/multicursors.nvim',
        dependencies = { 'smoka7/hydra.nvim' },
    },

    {
        'kevinhwang91/nvim-ufo',
        dependencies = 'kevinhwang91/promise-async',
    },

    {
        'lukas-reineke/indent-blankline.nvim',
        tag = 'v2.0.0',
    },

    {
        'folke/tokyonight.nvim',
        lazy = false,
    },

    'github/copilot.vim',

    'mfussenegger/nvim-dap',

    'windwp/nvim-autopairs',

    'famiu/bufdelete.nvim',

    'rmagatti/auto-session',

    'ahmedkhalf/project.nvim',

    'numToStr/Comment.nvim',

    'kylechui/nvim-surround',

    'gaoDean/autolist.nvim',

    'anuvyklack/pretty-fold.nvim',

    'rcarriga/nvim-notify',

    'folke/neodev.nvim',
})
