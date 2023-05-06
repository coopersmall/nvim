local diffview = require('diffview')

diffview.setup()

vim.keymap.set('n', '<leader>gw', '<CMD>DiffviewOpen<CR>')
vim.keymap.set('n', '<leader>gq', '<CMD>DiffviewClose<CR>')
