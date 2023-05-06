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

vim.api.nvim_create_autocmd({ "BufNewFile", "BufReadPost" }, {
    callback = function(args)
        if vim.fn.expand "%:p" ~= "" then
            vim.api.nvim_del_autocmd(args.id)
            vim.cmd "noautocmd NvimTreeFindFile"
            vim.cmd "noautocmd NvimTreeOpen"
            vim.schedule(function()
                vim.cmd "wincmd p"
            end)
        end
    end,
})

vim.keymap.set('n', '<leader>`', ":NvimTreeFindFile<CR>")
