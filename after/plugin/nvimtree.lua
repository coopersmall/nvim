require("nvim-tree").setup({
    view = {
        side = 'left',
        width = 30
    },
    actions = {
        open_file = {
            resize_window = true,
        }
    }
})

vim.keymap.set('n', '<leader><Tab>', ":NvimTreeFindFileToggle<CR>")
