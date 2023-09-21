local treesj = require('treesj')

treesj.setup()

vim.keymap.set('n', '<leader><Tab>', '<cmd>lua require("treesj").toggle()<cr>', { noremap = true, silent = true })
