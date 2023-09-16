pcall(require('telescope').load_extension, 'fzf')
pcall(require("telescope").load_extension("live_grep_args"))
pcall(require('telescope').load_extension('undo'))

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>?', builtin.oldfiles, { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader>b', builtin.buffers, { desc = '[ ] Find open buffers' })
vim.keymap.set('n', '<leader><.>', function()
    builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
        winblend = 10,
        previewer = false,
    })
end, { desc = { 'Fuzzy search current buffer' } })

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
vim.keymap.set('n', '<leader>fw', builtin.grep_string, {})
vim.keymap.set('n', '<leader>fr', builtin.lsp_references, {})
vim.keymap.set('n', '<leader>fs', ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>")

vim.keymap.set("n", "<leader>u", "<cmd>Telescope undo<cr>")

local telescope = require("telescope")
local lga_actions = require("telescope-live-grep-args.actions")
local actions = require('telescope.actions')

telescope.setup {
    mappings = {
        i = {
            ['<C-f>'] = actions.close
        },
    },
    extensions = {
        live_grep_args = {
            auto_quoting = true, -- enable/disable auto-quoting
            -- define mappings, e.g.
            mappings = {
                -- extend mappings
                i = {
                    ["<C-o>"] = lga_actions.quote_prompt(),
                    ["<C-i>"] = lga_actions.quote_prompt({ postfix = " --iglob " }),
                },
            },
            -- ... also accepts theme settings, for example:
            -- theme = "dropdown", -- use dropdown theme
            -- theme = { }, -- use own theme spec
            -- layout_config = { mirror=true }, -- mirror preview pane
        },
        undo = {
            side_by_side = true,
            layout_strategy = "vertical",
            layout_config = {
                preview_height = 0.8,
            },
            use_delta = true,
            use_custom_command = nil, -- setting this implies `use_delta = false`. Accepted format is: { "bash", "-c", "echo '$DIFF' | delta" }
            diff_context_lines = vim.o.scrolloff,
            entry_format = "state #$ID, $STAT, $TIME",
            time_format = "",
            mappings = {
                n = {
                    ["y"] = require("telescope-undo.actions").yank_additions,
                    ["Y"] = require("telescope-undo.actions").yank_deletions,
                    ["u"] = require("telescope-undo.actions").restore,
                },
            },
        },
    }
}
