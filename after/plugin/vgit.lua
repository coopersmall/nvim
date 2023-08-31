local vgit = require('vgit')

vgit.setup()

vim.keymap.set("n", "<leader><Space>", "<CMD>VGit buffer_history_preview<CR>")
