--[[
 ____  _             _
|  _ \| |_   _  __ _(_)_ __  ___
| |_) | | | | |/ _` | | '_ \/ __|
|  __/| | |_| | (_| | | | | \__ \
|_|   |_|\__,_|\__, |_|_| |_|___/
               |___/

Plugins are managed using lazy.nvim. This file is used to install plugins and
configure them. For more information on lazy.nvim, see: github.com/folke/lazy.nvim
]]

-- Install lazy.nvim if it doesn't exist
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- Install plugins
require('lazy').setup({

    -- Theme
    'folke/tokyonight.nvim',

    -- Core lua functions
    {
        'nvim-lua/plenary.nvim',
        lazy = true,
    },

    -- Icons
    {
        'nvim-tree/nvim-web-devicons',
        lazy = true,
    },

    -- Treesitter is used for syntax highlighting
    'nvim-treesitter/nvim-treesitter',

    -- Mason is used for managing LSPs
    {
        'williamboman/mason.nvim',
        lazy = true,
        cmd = {
            'MasonInstall',
            'MasonUpdate',
            'MasonUninstall',
        },
    },

    -- Mason LSP Configurations
    'williamboman/mason-lspconfig.nvim',

    -- LSP Configurations
    'neovim/nvim-lspconfig', -- Dependency

    -- LSP Diagnostics
    {
        'hrsh7th/nvim-cmp', -- Dependency
        event = 'InsertEnter',
    },

    -- LSP Completion
    'hrsh7th/cmp-nvim-lsp', -- Dependency

    -- LSP Snippets
    'L3MON4D3/LuaSnip', -- Dependency

    -- LSP Zero is used to configure LSPs
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
    },

    -- Telescope is used for fuzzy finding
    {
        'nvim-telescope/telescope.nvim',
        lazy = true,
        cmd = {
            'Telescope',
            'TelescopeOldfiles',
            'TelescopeBuffers',
            'TelescopeCurrentBufferFuzzyFind',
            'TelescopeFindFiles',
            'TelescopeGitFiles',
            'TelescopeGrepString',
            'TelescopeLspReferences',
            'TelescopeUndo',
        },
    },

    -- Telescope grep across files
    {
        'nvim-telescope/telescope-live-grep-args.nvim',
        lazy = true,
        cmd = {
            'TelescopeLiveGrepArgs',
        },
    },

    -- Telescope fuzzy finder extension
    'nvim-telescope/telescope-fzf-native.nvim',

    -- Custom menus
    'smoka7/hydra.nvim', -- Dependency

    -- Interact with multiple lines
    {
        'smoka7/multicursors.nvim',
        lazy = true,
        cmd = {
            'MCunderCursor',
            'MCpattern',
        }
    },

    -- Async functions
    'kevinhwang91/promise-async', -- Dependency

    -- Improve folds
    {
        'kevinhwang91/nvim-ufo',
        lazy = true,
        cmd = {
            'UfoToggle',
            'UfoFold',
            'UfoUnfold',
            'UfoToggleFold',
            'UfoToggleFoldRecursive',
        },
    },

    -- Improve indentation
    {
        'lukas-reineke/indent-blankline.nvim',
        tag = 'v2.0.0',
    },

    -- Move quickly within a buffer
    {
        'phaazon/hop.nvim',
        lazy = true,
        cmd = {

        },
    },

    -- Start page
    'goolord/alpha-nvim',

    -- Show buffers at the top
    'akinsho/bufferline.nvim',

    -- Show statusline at the bottom
    'nvim-lualine/lualine.nvim',

    -- Autocompletion
    'github/copilot.vim',

    -- Debugger
    'mfussenegger/nvim-dap',

    -- Expand and collapse code
    {
        'Wansmer/treesj',
        lazy = true,
        cmd = {
            'TreesJToggle',
        },
    },

    -- Add closing to pairs
    'windwp/nvim-autopairs',

    -- Delete buffers
    'famiu/bufdelete.nvim',

    -- Session management
    'rmagatti/auto-session',

    -- Interact with git
    {
        'tanvirtin/vgit.nvim',
        lazy = true,
        cmd = {
            'VGit',
        },
    },

    -- Comment out code
    {
        'numToStr/Comment.nvim',
        lazy = true,
        cmd = {
            'CommentToggle',
            'CommentLine',
            'CommentBlock',
        },
    },

    -- Surround text with pairs
    'kylechui/nvim-surround',

    -- Automatically format lists
    'gaoDean/autolist.nvim',

    -- Improve fold styling
    'anuvyklack/pretty-fold.nvim',

    -- Improve notificaitons
    'rcarriga/nvim-notify',

    -- LSP for Neovim
    'folke/neodev.nvim',

})
