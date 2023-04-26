local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set('n', '<leader>q', mark.add_file)
vim.keymap.set('n', '<leader>e', ui.toggle_quick_menu)

vim.keymap.set('n', '<C-r>', function() ui.nav_prev() end)
vim.keymap.set('n', '<C-t>', function() ui.nav_next() end)
