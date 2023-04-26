local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set('n', '<leader>q', mark.add_file)
vim.keymap.set('n', '<leader>e', ui.toggle_quick_menu)

vim.keymap.set('n', '<C-r>', function() ui.nav_prev() end)
vim.keymap.set('n', '<C-t>', function() ui.nav_next() end)

vim.keymap.set('n', '<C-h>', function() ui.nav.file(1) end)
vim.keymap.set('n', '<C-t>', function() ui.nav.file(2) end)
vim.keymap.set('n', '<C-n>', function() ui.nav.file(3) end)
vim.keymap.set('n', '<C-y>', function() ui.nav.file(4) end)
